from django.conf.urls import url
from user import views
urlpatterns=[
    url('avlusr/',views.avlusr),
    url('mngusr/',views.mnguser),
    url('regusr/',views.regusr),
    url(r'^approve/(?P<idd>\w+)', views.approve, name='approve'),
    url(r'^reject/(?P<idd>\w+)', views.reject, name='reject'),

]