import sys

from abc import ABCMeta, abstractmethod

if sys.version[0] == '2':
    class abstractclassmethod(classmethod):
        __isabstractmethod__ = True
        
        def __init__(self, callable):
            callable.__isabstractmethod__ = True
            super(abstractclassmethod, self).__init__(callable)
    
def make_repo(path):
    subclasses = Repo.__subclasses__()
    subclasses.sort(key=lambda x: x.priority, reverse=True)
    for subcls in subclasses:
        try:
            return subcls(path)
        except ValueError as e:
            pass
    raise ValueError("Path " + path + " is not a legal repo path")
    
class Repo:
    __metaclass__ = ABCMeta
    @abstractmethod
    def get_cores(self):
        pass
    
    @abstractmethod
    def cache_cores(self):
        pass
    
    def register_cores(coremanager):
        pass
    
import localrepo
import gitrepo
