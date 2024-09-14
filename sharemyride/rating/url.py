from django.conf.urls import url
from rating import views
urlpatterns=[
    url('postrating/',views.rating),
    url('viewrating/',views.viewrating),
]
