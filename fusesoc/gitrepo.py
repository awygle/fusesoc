import logging
import shutil
import os
import os.path
import hashlib

from fusesoc.repo import Repo
from fusesoc.core import Core
from fusesoc.config import Config

import dulwich.porcelain

logger = logging.getLogger(__name__)

class GitHttpRepo(Repo):
    def get_cores(self):
        return self._cores
    
    def cache_cores(self, cache_dir):
        logger.debug("Basic Git cores are always cached")
        pass
    
    priority = 0
    
    def __init__(self, path):
        if not path.startswith('http://') and not path.startswith('https://'):
            raise ValueError(path + " is not an HTTP or HTTPS URL")
        self.path = path
        self._cores = []
        
        dirname = os.path.join(Config().cache_root, 
                os.path.basename(path.rstrip("/")) + '-' +  hashlib.sha1(path).hexdigest())
        if os.path.isdir(dirname) == False:
            dulwich.porcelain.clone(path, dirname)
        else:
            repo = dulwich.porcelain.Repo(dirname)
            with open(os.devnull, 'w') as devnull:
                dulwich.porcelain.pull(repo, remote_location=path, outstream=devnull, errstream=devnull)
            self._cached = True
        
        for root, dirs, files in os.walk(dirname, followlinks=True):
            for f in files:
                if f.endswith('.core'):
                    d = os.path.basename(root)
                    self._cores.append(Core(os.path.join(root, f)))
                    del dirs[:]
        

