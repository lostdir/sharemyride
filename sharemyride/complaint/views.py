from django.shortcuts import render
from complaint.models import Complaint
import datetime
# Create your views here.
def complaint (request):
    obj = Complaint.objects.filter(reply="pending")
    context = {
        'objval': obj
    }

    return render(request,'complaint/complaints.html',context)
def postcmpt (request):
    vv=request.session["uid"]
    if request.method =="POST":
        ob=Complaint()
        ob.complaint=request.POST.get('complaints')
        ob.time=datetime.datetime.now()
        ob.date=datetime.date.today()
        ob.reply='pending'
        ob.user_id=vv
        ob.save()
    return render(request,'complaint/postcpmlt.html')
def postrply(request,idd):
    objlist=Complaint.objects.filter(complaint_id=idd)
    context={
        'obval':objlist,
    }
    if request.method=="POST":
        obb=Complaint.objects.get(complaint_id=idd)
        obb.reply=request.POST.get('reply')
        obb.save()
        return complaint(request)

    return render(request,'complaint/post_reply.html',context)
def viewrply(request):
    vv = request.session["uid"]
    obj = Complaint.objects.filter(user_id=vv)
    context = {
        'objval': obj
    }
    return render(request,'complaint/view_reply.html',context)
