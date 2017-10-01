import logging
import shutil
import os.path

from fusesoc.repo import Repo
from fusesoc.core import Core

logger = logging.getLogger(__name__)

class LocalRepo(Repo):
    def get_cores(self):
        return self._cores
    
    def cache_cores(self, cache_dir):
        pass
    
    priority = -1
    
    def __init__(self, path):
        self.path = os.path.abspath(path) # must be de-duplicated
        self._cores = []
        self._cached = True
        
        if path:
            logger.debug("Checking for cores in " + path)
        if os.path.isdir(path) == False:
            raise ValueError(path + " is not a directory")
        for root, dirs, files in os.walk(path, followlinks=True):
            for f in files:
                if f.endswith('.core'):
                    d = os.path.basename(root)
                    self._cores.append(Core(os.path.join(root, f)))
                    del dirs[:]
        

