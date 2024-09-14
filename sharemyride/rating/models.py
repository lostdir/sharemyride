from django.db import models
from user.models import User
# Create your models here.
class Rating(models.Model):
    rating_id = models.AutoField(primary_key=True)
    # from_id = models.IntegerField()
    # to_id = models.IntegerField()
    fromm=models.ForeignKey(User,to_field='user_id',on_delete=models.CASCADE,related_name="n11")
    to=models.ForeignKey(User,to_field='user_id',on_delete=models.CASCADE,related_name="n22")
    rating = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'rating'
