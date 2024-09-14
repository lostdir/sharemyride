from django.shortcuts import render

# Create your views here.
def admin(r):
    return render(r,'temp/admin.html')
def index(r):
    return render(r,'temp/index.html')
def user(r):
    return render(r,'temp/user.html')