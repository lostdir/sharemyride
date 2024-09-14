from django.db import models

# Create your models here.
from user.models import User


class Chat(models.Model):
    chat_id = models.AutoField(primary_key=True)
    chat = models.CharField(max_length=50)
    date = models.DateField()
    # to_id = models.IntegerField()
    time = models.TimeField()
    # fromm_id = models.IntegerField()
    fromm = models.ForeignKey(User, to_field='user_id', on_delete=models.CASCADE, related_name="n1")
    to = models.ForeignKey(User, to_field='user_id', on_delete=models.CASCADE, related_name="n2")

    class Meta:
        managed = False
        db_table = 'chat'

