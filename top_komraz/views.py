from django.shortcuts import render
from .models import KindService,KindDetail,KindDevice,Сreator

# Create your views here.
def index(request):
    return render(request, 'top_komraz/main.html')

##################################################
############### СПРАВОЧНИКИ #####################
#################################################

#Услуги
def show_kind_services(request):
    services = KindService.objects.all()
    return render(request, 'top_komraz/kind_services.html',{'services': services})

#Запчасти
def show_kind_detail(request):
    detail = KindDetail.objects.all()
    return render(request, 'top_komraz/kind_detail.html',{'details': detail})

#Устройства
def show_kind_device(request):
    device = KindDevice.objects.all()
    return render(request, 'top_komraz/kind_device.html',{'devices': device})

#Производители
def show_kind_creator(request):
    creator = Сreator.objects.all()
    return render(request, 'top_komraz/creator.html',{'creators': creator})

##################################################
############### Документы ########################
#################################################

#Акт приема
def show_acceptance_certificate(request):
    return render(request, 'top_komraz/acceptance_certificate.html')

#Договор на поставку
def show_contract_supply(request):
    return render(request, 'top_komraz/contract_supply.html')

#Акт выполненных работ
def show_certificate_of_completion(request):
    return render(request, 'top_komraz/certificate_of_completion.html')

##################################################
############### УЧЕТ  ############################
#################################################

#Обращения
def show_appeals(request):
    return render(request, 'top_komraz/appeals.html')

#Запчасти в наличии
def show_parts_stock(request):
    return render(request, 'top_komraz/parts_stock.html')

#Запчасти реализованные
def show_parts_sold(request):
    return render(request, 'top_komraz/parts_sold.html')

#Платежи
def show_payments(request):
    return render(request, 'top_komraz/Payments.html')

##################################################
############### ПЛАНЫ ############################
#################################################

#Продажи
def show_sales(request):
    return render(request, 'top_komraz/Sales.html')

#Закупок
def show_procurement(request):
    return render(request, 'top_komraz/Procurement.html')
