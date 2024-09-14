from django.shortcuts import render
from route.models import Route
# Create your views here.
def route(request):
    vv=request.session["uid"]
    obj=Route.objects.filter(u_id=vv)
    context={
        'ok':obj
    }
    return render(request,'route/routeview.html',context)

def routedel(requet,idd):
    obj=Route.objects.get(route_id=idd)
    obj.delete()
    return route(requet)