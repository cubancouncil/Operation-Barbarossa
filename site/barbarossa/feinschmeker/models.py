from django.db import models
from django.contrib.localflavor.us.models import USStateField
import datetime

# Feinschmeker models here.
class Category(models.Model):
    name = models.CharField(max_length=50)
    create_date = models.DateTimeField(auto_now_add=True)
    def __unicode__(self):
        return self.name

class City(models.Model):
    name = models.CharField(max_length=100)
    def __unicode__(self):
        return self.name

class Feinschmeker(models.Model):
    name = models.CharField(max_length=100)
    category = models.ForeignKey(Category)
    job_title = models.CharField(max_length=100)
    description = models.TextField()
    photo = models.ImageField(upload_to='feinschmeker')
    signature = models.ImageField(upload_to='feinschmeker')
    create_date = models.DateTimeField(auto_now_add=True)
    def __unicode__(self):
        return self.name

class CityCategory(models.Model):
    feinschmeker = models.ForeignKey(Feinschmeker)
    city = models.ForeignKey(City)
    def __unicode__(self):
        return self.name


class Location(models.Model):
    name = models.CharField(max_length=100)
    city = models.ForeignKey(City)
    feinschmeker = models.ForeignKey(Feinschmeker)
    address_street = models.ForeignKey(Category)
    address_city = models.CharField(max_length=50)
    address_state = USStateField()
    description = models.TextField()
    phone = models.CharField(max_length=50)
    photo = models.ImageField(upload_to='Location')
    create_date = models.DateTimeField(auto_now_add=True)
    def __unicode__(self):
        return self.name

