from django.db import models
from user.models import User
# Create your models here.
class Route(models.Model):
    route_id = models.AutoField(primary_key=True)
    latitude = models.CharField(max_length=50)
    longitude = models.CharField(max_length=50)
    route = models.CharField(max_length=50)
    # u_id = models.IntegerField()
    u=models.ForeignKey(User,to_field='user_id',on_delete=models.CASCADE)
    date = models.DateField()
    time = models.TimeField()

    class Meta:
        managed = False
        db_table = 'route'
