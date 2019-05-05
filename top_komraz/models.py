from django.db import models

# Create your models here.

#Модели справочников
#Услуги
class KindService(models.Model):
    Id_KindService = models.AutoField(primary_key=True)
    Name_work = models.CharField(max_length=255)
    Cifer_service = models.CharField(max_length=255)

    class Meta:
        db_table = 'kindservice'

#Запчасти
class KindDetail(models.Model):
    Id_KindDetail = models.AutoField(primary_key=True)
    Name_Detail = models.CharField(max_length=255)
    Cifer_kind = models.CharField(max_length=255)

    class Meta:
        db_table = 'kinddetail'

#Устройства
class KindDevice(models.Model):
    Id_KindDevice = models.AutoField(primary_key=True)
    NameDevice = models.CharField(max_length=255)
    Cifer_kind = models.CharField(max_length=255)

    class Meta:
        db_table = 'kinddevice'

#Производители
class Сreator(models.Model):
    Id_creator = models.AutoField(primary_key=True)
    Name_creator = models.CharField(max_length=255)
    Cifer_creator = models.CharField(max_length=255)

    class Meta:
        db_table = 'creator'