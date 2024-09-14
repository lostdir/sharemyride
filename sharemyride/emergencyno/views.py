from django.shortcuts import render
from emergencyno.models import Emergencynumber
from emergencyno.models import Alert
import datetime
# Create your views here.
def emgno (request):
    if request.method =="POST":
        ob = Emergencynumber()
        ob.name= request.POST.get('name')
        ob.emg_no= request.POST.get('number')
        ob.save()

    return render(request,'emergencyno/emgno.html')

def viewemg (request):
    obj =Emergencynumber.objects.all()
    context = {
        'objval': obj
    }
    return render(request,'emergencyno/viewemgno.html',context)
def viewalert (request):
    obj = Alert.objects.all()
    context = {
        'objval': obj
    }
    return render(request, 'emergencyno/viewalert.html', context)



def alert (request):
    if request.method =="POST":
        ob=Alert()
        ob.alert=request.POST.get('alert')
        ob.time = datetime.datetime.now()
        ob.date = datetime.date.today()
        ob.save()


    return render(request,'emergencyno/alert.html')
