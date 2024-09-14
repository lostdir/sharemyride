from django.shortcuts import render
from user.models import User
from login.models import Login
from booking.models import Booking
# Create your views here.
# Create your views here.
def avlusr(request):
    obj=Booking.objects.all()
    context={
        'objval':obj
    }


    return render(request,'user/avlusr.html',context )
def mnguser(request):
    obj = User.objects.filter(status="pending")
    context = {
        'objval': obj
    }
    return render(request,'user/mnguser.html',context)
def regusr(request):
    if request.method == "POST":
        ob=User()
        ob.name=request.POST.get('name')
        ob.address=request.POST.get('address')
        ob.gender=request.POST.get('gender')
        ob.phone=request.POST.get('phone')
        ob.email=request.POST.get('email')
        ob.license=request.POST.get('license')
        ob.age=request.POST.get('age')
        ob.username=request.POST.get('username')
        ob.password=request.POST.get('password')
        ob.status='pending'
        ob.save()

        obj=Login()
        obj.username=request.POST.get('username')
        obj.password=request.POST.get('password')
        obj.type="pending"
        obj.user_id=ob.user_id
        obj.save()

    return render(request,'user/regusr.html')


def approve(request,idd):
    ob = Login.objects.get(user_id=idd)
    ob.type = "user"
    ob.save()

    return mnguser(request)


def reject(request, idd):
    obj = User.objects.get(user_id=idd)
    obj.status = "Rejected"
    obj.save()
    return mnguser(request)

