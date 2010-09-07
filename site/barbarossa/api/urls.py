from django.conf.urls.defaults import *
from piston.resource import Resource
from piston.authentication import HttpBasicAuthentication
from piston.emitters import Emitter, JSONEmitter
from api.handlers import CityHandler

auth = HttpBasicAuthentication(realm="Operation Barbarossa")
ad = {'authentication': auth}

city_resource = Resource(handler=CityHandler, **ad)

Emitter.register('json', JSONEmitter, 'application/json; charset=utf-8')

urlpatterns = patterns('',
    url(r'^cities/?$', city_resource),
)