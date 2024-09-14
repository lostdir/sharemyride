from django.db import models

# Create your models here.
class Emergencynumber(models.Model):
    emgno_id = models.AutoField(primary_key=True)
    emg_no = models.IntegerField()
    name = models.CharField(max_length=25)

    class Meta:
        managed = False
        db_table = 'emergencynumber'



class Alert(models.Model):
    alert_id = models.AutoField(primary_key=True)
    time = models.TimeField()
    date = models.DateField()
    alert = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'alert'
