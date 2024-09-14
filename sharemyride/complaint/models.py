from django.db import models
from user.models import User
# Create your models here.
class Complaint(models.Model):
    complaint_id = models.AutoField(primary_key=True)
    complaint = models.CharField(max_length=500)
    date = models.DateField()
    time = models.TimeField()
    reply = models.CharField(max_length=500)
    # user_id = models.IntegerField()
    user=models.ForeignKey(User,to_field='user_id',on_delete=models.CASCADE)
    class Meta:
        managed = False
        db_table = 'complaint'

