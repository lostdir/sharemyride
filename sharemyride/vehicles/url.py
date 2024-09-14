from django.shortcuts import render

# Create your views here.

from django.conf.urls import url
from vehicles import views
urlpatterns=[
    url('regveh/',views.regvehicle),
    url('mngveh/',views.mngveh),
    url(r'^approve/(?P<idd>\w+)', views.approve, name='add'),
    url(r'^reject/(?P<idd>\w+)', views.reject, name='remove'),


]
