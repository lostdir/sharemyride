from django.http import HttpResponseRedirect
from django.shortcuts import render
from chat.models import Chat
from user.models import User
import datetime
# Create your views here.

def viewuser(request):
    cc = request.session["uid"]
    obj=User.objects.all().exclude(user_id=cc)
    context={
        'ok':obj
    }
    return render(request,'chat/VIEWUSER.html',context)
def chat (request,idd):
    cc=request.session["uid"]
    if request.method == "POST":
        ob = Chat()
        ob.chat = request.POST.get('CHAT')
        ob.to_id=idd
        ob.fromm_id=cc
        ob.date=datetime.datetime.today()
        ob.time=datetime.datetime.now()
        ob.save()
        return HttpResponseRedirect('/chat/userview/')
    return render(request,'chat/chat.html')

def viewmessages(request):
    cc=request.session["uid"]
    obj=Chat.objects.filter(to_id=cc)
    context={
        'ok':obj
    }
    return render(request,'chat/viewmessages.html',context)
def chatrep (request,idd):
    cc=request.session["uid"]
    if request.method == "POST":
        ob = Chat()
        ob.chat = request.POST.get('CHAT')
        ob.to_id=idd
        ob.fromm_id=cc
        ob.date=datetime.datetime.today()
        ob.time=datetime.datetime.now()
        ob.save()
        return HttpResponseRedirect('/chat/userview/')
    return render(request,'chat/chat.html')

