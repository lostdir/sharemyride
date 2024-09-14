from django.shortcuts import render
from rating.models import Rating
from user.models import User
# Create your views here.
def rating(request):
    ss = request.session["uid"]
    obj=User.objects.all().exclude(user_id=ss)
    context={
        'ok':obj
    }

    if request.method == "POST":
        ob= Rating()
        ob.rating=request.POST.get('rating')
        ob.fromm_id = ss
        ob.to_id =request.POST.get('us')
        ob.save()
    return render(request,'rating/postrating.html',context)

def viewrating (request):
    ss = request.session["uid"]
    obj=Rating.objects.filter(to_id=ss)
    context={
        'ov':obj
    }
    return render(request,'rating/viewrating.html',context)


# def addrating(request):
#     if request.method == "POST":
#         obj = Rating()