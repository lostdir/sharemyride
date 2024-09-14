from django.conf.urls import url
from emergencyno import views
urlpatterns=[
    url('add/',views.emgno),
    url('view/',views.viewemg),
    url('alert/',views.alert),
    url('alertttttttttt/',views.viewalert),
]