from django.conf.urls import url
from complaint import views
urlpatterns=[
    url('view/',views.complaint),
    url('post/',views.postcmpt),
    url(r'^postrply/(?P<idd>\w+)', views.postrply, name='postrply'),
    url('viewrply/',views.viewrply),
]