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
class Creator(models.Model):
    Id_creator = models.AutoField(primary_key=True)
    Name_creator = models.CharField(max_length=255)
    Cifer_creator = models.CharField(max_length=255)

    class Meta:
        db_table = 'creator'

#Устройства
class Device(models.Model):
    Id_device = models.AutoField(primary_key=True)
    Model_device = models.CharField(max_length=255)
    IMEI = models.CharField(max_length=255)
    Id_KindDevice = models.ForeignKey(KindDevice, models.DO_NOTHING)
    Id_creator = models.ForeignKey(Creator, models.DO_NOTHING)

    class Meta:
        db_table = 'device'

#Приемщик
class Employee(models.Model):
    Id_Employee = models.AutoField(primary_key=True)
    FIO = models.CharField(max_length=255)
    Phone = models.CharField(max_length=50)

    class Meta:
        db_table = 'employee'

#Мастер
class Master(models.Model):
    Id_Master = models.AutoField(primary_key=True)
    FIO = models.CharField(max_length=255)
    Phone = models.CharField(max_length=50)

    class Meta:
        db_table = 'master'

#Статус
class Status(models.Model):
    Id_Status = models.AutoField(primary_key=True)
    NameStatus = models.CharField(max_length=255)

    class Meta:
        db_table = 'status'

# Тип оплаты
class Type_payment(models.Model):
    ID_type = models.AutoField(primary_key=True)
    Name = models.CharField(max_length=255)

    class Meta:
        db_table = 'type_payment'

# Поставщик
class Provider(models.Model):
    ID_Provider = models.AutoField(primary_key=True)
    Organization_name = models.CharField(max_length=255)
    Organisation_Adress = models.CharField(max_length=255)
    Organisation_phone = models.CharField(max_length=50)
    Employee = models.CharField(max_length=255)

    class Meta:
        db_table = 'provider'

# Услуги
class Service(models.Model):
    IdService = models.AutoField(primary_key=True)
    Price = models.CharField(max_length=255)
    Id_service = models.ForeignKey(KindService, models.DO_NOTHING)

    class Meta:
        db_table = 'service'


#Деталь
class Detail_fix2 (models.Model):
    Id_Detail = models.AutoField(primary_key=True)
    NameDetail = models.CharField(max_length=255)
    PriceDetail = models.DecimalField(max_digits=10, decimal_places=2)
    Market_price = models.DecimalField(max_digits=10, decimal_places=2)
    Number = models.IntegerField()
    Id_KindDetail = models.ForeignKey(KindDetail, models.DO_NOTHING)

    class Meta:
        db_table = 'detail_fix2'

#Договор на поставку
class Request_delivery3(models.Model):
    ID_request = models.AutoField(primary_key=True)
    Date = models.DateField()
    Quantity = models.IntegerField()
    ID_Provider = models.ForeignKey(Provider, models.DO_NOTHING)
    ID_Detail = models.ForeignKey(Detail_fix2, models.DO_NOTHING)

    class Meta:
        db_table = 'request_delivery3'


#Клиент
class Customer(models.Model):
    Id_customer = models.AutoField(primary_key=True)
    FIO = models.CharField(max_length=255)
    Phone = models.CharField(max_length=50)
    Adress = models.CharField(max_length=255)

    class Meta:
        db_table = 'customer'

#Акт приема
class Contract_fix2(models.Model):
    Id_contract = models.AutoField(primary_key=True)
    ConclusionDate = models.DateField()
    PeriodExecute = models.DateField()
    Defect = models.CharField(max_length=255)
    Appearance = models.CharField(max_length=255)
    Id_customer = models.ForeignKey(Customer, models.DO_NOTHING)
    Id_Employee = models.ForeignKey(Employee, models.DO_NOTHING)
    Id_device = models.ForeignKey(Device, models.DO_NOTHING)
    ID_service = models.ForeignKey(Service, models.DO_NOTHING)
    ID_Detail_fix = models.ForeignKey(Detail_fix2, models.DO_NOTHING)


    class Meta:
        db_table = 'contract_fix2'

#Заказ
class Orderentity_fix2(models.Model):
    ID_Order= models.AutoField(primary_key=True)
    Id_Status = models.ForeignKey(Status, models.DO_NOTHING)
    Id_contract = models.ForeignKey(Contract_fix2, models.DO_NOTHING)
    Id_Master = models.ForeignKey(Master, models.DO_NOTHING)

    class Meta:
        db_table = 'orderentity_fix2'

#Акт выполненных работ
class Certificate_fix2(models.Model):
    ID_certificate= models.AutoField(primary_key=True)
    Date = models.DateField()
    Guarantee = models.CharField(max_length=255)
    Sum = models.DecimalField(max_digits=8, decimal_places=2)
    ID_Order_fix = models.ForeignKey(Orderentity_fix2, models.DO_NOTHING)
    ID_type = models.ForeignKey(Type_payment, models.DO_NOTHING)

    class Meta:
        db_table = 'certificate_fix2'

#Реализованные запчасти
class Implemented(models.Model):
    ID_certificate= models.AutoField(primary_key=True)
    Quantity = models.IntegerField()
    ID_Detail = models.ForeignKey(Detail_fix2, models.DO_NOTHING)

    class Meta:
        db_table = 'implemented'