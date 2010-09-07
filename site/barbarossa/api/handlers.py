from piston.handler import BaseHandler
from barbarossa.feinschmeker.models import Feinschmeker, City

class ApiHandler(BaseHandler):
   allowed_methods = ('GET',)
   model = Feinschmeker

   def read(self, request, post_slug):
       pass

class CityHandler(BaseHandler):
    allowed_methods = ('GET',)
    fields = ('id', 'name',)
    model = City
    
    @classmethod
    def content_size(self, city):
        return len(city.content)
    
    def read(self, request):
        return City.objects.all()