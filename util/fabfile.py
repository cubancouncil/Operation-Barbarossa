from os import path
from fabric.api import env
from fabric.contrib.project import rsync_project

env.root_path = path.join(path.dirname(path.dirname(__file__)), 'site', 'barbarossa').replace('\\', '/')
env.hosts = ['thisspot.org']
env.user = 'root'

def dev():
    rsync_project(local_dir=env.root_path, remote_dir='/home/cc/barbarossa/', extra_opts='-ruvP')