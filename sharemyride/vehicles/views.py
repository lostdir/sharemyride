from django.shortcuts import render
from vehicles.models import Vehicles
# Create your views here.
def mngveh(request):
    obj = Vehicles.objects.filter(status="pending")
    context = {
        'objval': obj
    }
    return render(request,'vehicles/mngveh.html',context)
def regvehicle(request):
    vc=request.session["uid"]
    if request.method == "POST":
        ob = Vehicles()
        ob.vehicle_name = request.POST.get('vehiclename')
        ob.model = request.POST.get('model')
        ob.registered_no = request.POST.get('registeredno')
        ob.type = request.POST.get('type')
        ob.user_id = vc
        ob.status = 'pending'
        ob.save()



    return render(request,'vehicles/regvehicle.html')

def approve(request,idd):
    obj=Vehicles.objects.get(vehicle_id=idd)
    obj.status="Approved"
    obj.save()
    return mngveh(request)

def reject(request,idd):
    obj=Vehicles.objects.get(vehicle_id=idd)
    obj.status="Rejected"
    obj.save()
    return mngveh(request)