from django.shortcuts import render

# Create your views here.

from django.conf.urls import url
from booking import views
urlpatterns=[
    url('addbooking/',views.addbooking),
    url('bookingrqst/',views.bookingrqst),
    url('bookingstatus/',views.bookingstatus),
    url('bookusr/',views.bookusr),
    url(r'^approve/(?P<idd>\w+)', views.approve, name='booked'),
    url(r'^bookreject/(?P<idd>\w+)', views.bookreject, name='bookreject'),
    url(r'^booke/(?P<idd>\w+)', views.booke, name='booke'),
    url(r'^pay/(?P<idd>\w+)', views.addpayment, name='payee'),
    url(r'^cncl/(?P<idd>\w+)', views.bookcancel, name='cnckll'),
]
