from django.conf.urls import url
from chat import views
urlpatterns=[
    url('chat/(?P<idd>\w+)',views.chat,name="chat1"),
    url('chatre/(?P<idd>\w+)',views.chatrep,name="chat22"),
    url('userview/',views.viewuser),
    url('messag/',views.viewmessages)
]