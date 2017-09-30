import logging
import shutil

from fusesoc.repo import Repo
from fusesoc.core import Core

logger = logging.getLogger(__name__)

class LocalRepo(Repo):
    def list_cores(self):
        print("\nAvailable cores in {}:\n".format(self.path))
        print('Core'.ljust(maxlen) + '   Cache status')
        print("="*80)
        if not self.cores:
            logger.warning("No cores found in "+self.path)
            return
        maxlen = max(map(lambda x: len(str(x.name)), self.cores))
        for core in self.cores:
            print(str(core.name).ljust(maxlen) + ' : ' + core.cache_status())
    
    def cache_cores(self, cache_dir):
        pass
    
    def __init__(path):
        self.path = path
        self.cores = []
        
        if path:
            logger.debug("Checking for cores in " + path)
        if os.path.isdir(path) == False:
            raise IOError(path + " is not a directory")
        for root, dirs, files in os.walk(path, followlinks=True):
            for f in files:
                if f.endswith('.core'):
                    d = os.path.basename(root)
                    self.cores.append(Core(os.path.join(root, f)))
                    del dirs[:]
        

