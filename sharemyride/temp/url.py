from django.conf.urls import url
from temp import views
urlpatterns=[
    url('admin/',views.admin),
    url('index/',views.index),
    url('user/', views.user),

]