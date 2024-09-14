from django.db import models

# Create your models here.
from route.models import Route
from user.models import User


class Booking(models.Model):
    booking_id = models.AutoField(primary_key=True)
    date = models.DateField(blank=True, null=True)
    time = models.TimeField(blank=True, null=True)
    status = models.CharField(max_length=20)
    # route_id = models.IntegerField()
    # user_id = models.IntegerField()
    route=models.ForeignKey(Route,to_field='route_id',on_delete=models.CASCADE)
    user=models.ForeignKey(User,to_field='user_id',on_delete=models.CASCADE)
    class Meta:
        managed = False
        db_table = 'booking'

