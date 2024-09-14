import datetime

from django.shortcuts import render
from booking.models import Booking
from payment.models import Payment
from route.models import Route
def addbooking (request):
    cv=request.session["uid"]
    if request.method == "POST":
        ob=Route()
        ob.latitude=request.POST.get('NAME')
        ob.date=request.POST.get('DATE')
        ob.time=request.POST.get('TIME')
        ob.route=request.POST.get('LOCATION')
        ob.longitude=request.POST.get('lo')
        # ob.status='pending'
        ob.u_id=cv

        ob.save()

    return render(request,'booking/addbooking.html')

def bookingrqst (request):
    cv = request.session["uid"]
    obj = Booking.objects.filter(status="Booked",route__u_id=cv)
    context = {
        'objval': obj
    }
    return render(request,'booking/bookingrqst.html',context)

def bookingstatus (request):
    cv = request.session["uid"]
    obj=Booking.objects.filter(user_id=cv)
    context={
        'objval':obj
    }

    return render(request,'booking/bookingstatus.html',context)
def bookusr (request):
    cv = request.session["uid"]
    if request.method=="POST":
        loc=request.POST.get('lo')
        ob=Route.objects.filter(route__icontains=loc).exclude(u_id=cv)
        context = {
        'objval': ob
        }
        return render(request, 'booking/bookusr.html', context)
    return render(request,'booking/bookusr.html')

def approve(request,idd):
    if request.method=="POST":
        ob = Booking.objects.get(booking_id=idd)
        ob.status = "Approved"
        ob.save()
        obj=Payment()
        obj.book_id=idd
        obj.type=request.POST.get('pd')
        obj.payment=request.POST.get('DATE')
        obj.status="pending"
        obj.save()
        return bookingrqst(request)


    return render(request,'booking/payment.html')


def bookreject(request, idd):
    ob = Booking.objects.get(booking_id=idd)
    ob.status = "rejected"
    ob.save()
    return bookingrqst(request)

def booke(request,idd):
    cv = request.session["uid"]

    ob = Booking()
    ob.date=datetime.datetime.today()
    ob.time=datetime.datetime.now()
    ob.user_id=cv
    ob.route_id=idd
    ob.status = "Booked"
    ob.save()


    return bookusr(request)
def addpayment(req,idd):
    obj=Payment.objects.get(book__booking_id=idd)
    context={
        'ok':obj

    }
    if req.method=="POST":
        obj.status="paid"
        obj.type = req.POST.get('pd')
        obj.payment = req.POST.get('DATE')
        obj.status = "pending"
        obj.save()
        return bookingstatus(req)
    return render(req,'booking/addpayeee.html',context)
def bookcancel(request, idd):
    ob = Booking.objects.get(booking_id=idd)
    ob.status = "cancelled"
    ob.save()
    return bookingstatus(request)