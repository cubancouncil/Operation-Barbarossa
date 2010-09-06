from piston.handler import BaseHandler
from barbarossa.models import Feinschmeker

class ApiHandler(BaseHandler):
   allowed_methods = ('GET',)
   model = Feinschmeker

   def read(self, request, post_slug):
        





