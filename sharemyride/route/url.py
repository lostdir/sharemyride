from django.conf.urls import url
from route import views
urlpatterns=[
    url('routeview/',views.route),
    url('routeupdtea/(?P<idd>\w+)',views.routedel,name="dellllllllll"),

]
