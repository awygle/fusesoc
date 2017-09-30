from abc import ABC, abstractmethod

class Repo(ABC):
    @abstractmethod
    def list_cores():
        pass
    
    @abstractmethod
    def cache_cores():
        pass
    
    def register_cores(coremanager):
        pass
    
    @classmethod
    def make_repo(path):
        return LocalRepo(path)
