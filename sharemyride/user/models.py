from django.db import models

# Create your models here.
class User(models.Model):
    user_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=50)
    address = models.CharField(max_length=500)
    phone = models.CharField(max_length=15)
    email = models.CharField(max_length=100)
    license = models.CharField(max_length=100)
    gender = models.CharField(max_length=50)
    age = models.CharField(max_length=100)
    username = models.CharField(max_length=50)
    password = models.CharField(max_length=50)
    status = models.CharField(max_length=50)


    class Meta:
        managed = False
        db_table = 'user'
