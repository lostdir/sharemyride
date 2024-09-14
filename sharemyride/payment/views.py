from django.shortcuts import render

# Create your views here.
from payment.models import Payment


def payment (request):
    cv=request.session["uid"]
    obj=Payment.objects.filter(book__route__u_id=cv)
    context={
        'ok':obj
    }
    return render(request,'payment/payment.html',context)