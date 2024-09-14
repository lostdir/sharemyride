from django.db import models
from booking.models import Booking
# Create your models here.
class Payment(models.Model):
    payment_id =  models.AutoField(primary_key=True)
    payment = models.CharField(max_length=25)
    status = models.CharField(max_length=40)
    # book_id = models.IntegerField()
    book=models.ForeignKey(Booking,to_field='booking_id',on_delete=models.CASCADE)
    type = models.CharField(max_length=40)

    class Meta:
        managed = False
        db_table = 'payment'

