from django.shortcuts import render

# Create your views here.
from login.models import Login


def login (request):
    if request.method == "POST":
        username = request.POST.get("us")
        password = request.POST.get("ps")
        obj = Login.objects.filter(username=username,password=password)
        tp = ""
        for ob in obj:
            tp = ob.type
            uid = ob.user_id
            if tp == "admin":
                request.session["uid"] = uid
                return render(request, 'temp/admin.html')
            elif tp == "user":
                request.session["uid"] = uid
                return render(request, 'temp/user.html')
            # elif tp == "Employee":
            #     request.session["uid"] = uid
            #     return render(request, 'temp/employee_home.html')
            # elif tp == "authority":
            #     request.session["uid"] = uid
            #     return render(request, 'temp/authority_home.html')
            else:
                msg = "Incorrect username or password!!"
                context = {
                    'ok': msg
                }
    return render(request,'login/login.html')