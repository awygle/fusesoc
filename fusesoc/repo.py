import sys

from abc import ABCMeta, abstractmethod

if sys.version[0] == '2':
    class abstractclassmethod(classmethod):
        __isabstractmethod__ = True
        
        def __init__(self, callable):
            callable.__isabstractmethod__ = True
            super(abstractclassmethod, self).__init__(callable)
    
def make_repo(path):
    for subcls in Repo.__subclasses__():
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
