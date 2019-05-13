from django.shortcuts import render, get_object_or_404, redirect
from .models import *
from django.views.decorators.csrf import csrf_exempt
from docx import Document
from django.http import HttpResponse
import os

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
    creator = Creator.objects.all()
    return render(request, 'top_komraz/creator.html',{'creators': creator})

##################################################
############### Документы ########################
#################################################

#Акт приема
def show_acceptance_certificate(request):
    orders = Orderentity_fix2.objects.all()
    return render(request, 'top_komraz/acceptance_certificate.html',{'orders': orders})

#Заполненный акт приема
@csrf_exempt
def download_act_enter(request):
    document = Document('top_komraz/act_enter_template.docx')
    document.save('top_komraz/act_enter_downloads.docx')
    filename = 'top_komraz/act_enter_downloads.docx'
    data = open(filename, "rb").read()
    response = HttpResponse(data, content_type='application/docx')
    response['Content-Length'] = os.path.getsize(filename)
    response['Content-Disposition'] = 'attachment; filename=.docx'

    return response

#Форма акта приема
@csrf_exempt
def download_act(request):
    document = Document('top_komraz/act_enter.docx')
    document.save('top_komraz/act_downloads.docx')
    filename = 'top_komraz/act_downloads.docx'
    data = open(filename, "rb").read()
    response = HttpResponse(data, content_type='application/docx')
    response['Content-Length'] = os.path.getsize(filename)
    response['Content-Disposition'] = 'attachment; filename=act_downloads.docx'

    return response

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
@csrf_exempt
def show_appeals(request):
    orders = Orderentity_fix2.objects.all()
    if request.method == 'POST':
        re_data = request.POST

        #Добавление
        if re_data['_method'] == "POST":
            #Устройство
            kind_device = get_object_or_404(KindDevice, Id_KindDevice=re_data['id_kind'])
            creator = get_object_or_404(Creator, Id_creator=re_data['id_creator'])
            Device.objects.create(Model_device= re_data['id_model'], IMEI=re_data['id_imei'], Id_KindDevice=kind_device, Id_creator=creator)


            #Акт приема
            customer = get_object_or_404(Customer, Id_customer=re_data['id_customer'])
            employee = get_object_or_404(Employee, Id_Employee= 1)      #Вот эту строку надо пофиксить
            device = Device.objects.last()
            service = get_object_or_404(Service, IdService=re_data['id_service'])
            detail = get_object_or_404(Detail_fix2, Id_Detail=re_data['id_detail'])
            Contract_fix2.objects.create(ConclusionDate=re_data['id_date'], PeriodExecute=re_data['id_date_end'],
                                         Defect=re_data['id_defect'], Appearance=re_data['id_appearance'],
                                         Id_customer=customer, Id_Employee=employee, Id_device=device, ID_service=service,
                                         ID_Detail_fix=detail)

            #Заказ
            status = get_object_or_404(Status, Id_Status=re_data['id_status'])
            contract = Contract_fix2.objects.last()
            master = get_object_or_404(Master, Id_Master=re_data['id_master'])
            Orderentity_fix2.objects.create(Id_Status=status, Id_contract=contract, Id_Master=master)
            return redirect('show_appeals')

        # Редактирование
        if re_data['_method'] == "PUT":
            # Устройство
            kind_device = get_object_or_404(KindDevice, Id_KindDevice=re_data['id_kind'])
            creator = get_object_or_404(Creator, Id_creator=re_data['id_creator'])
            Device.objects.filter(Id_device=re_data['device']).update(Model_device=re_data['id_model'],
                                                                      IMEI=re_data['id_imei'], Id_KindDevice=kind_device,
                                                                        Id_creator=creator)

            # Акт приема
            customer = get_object_or_404(Customer, Id_customer=re_data['id_customer'])
            employee = get_object_or_404(Employee, Id_Employee=1)  # Вот эту строку надо пофиксить
            device = get_object_or_404(Device, Id_device=re_data['device'])
            service = get_object_or_404(Service, IdService=re_data['id_service'])
            detail = get_object_or_404(Detail_fix2, Id_Detail=re_data['id_detail'])
            Contract_fix2.objects.filter(Id_contract=re_data['contract']).update(ConclusionDate=re_data['id_date'],
                                                                                 PeriodExecute=re_data['id_date_end'],
                                                                                 Defect=re_data['id_defect'],
                                                                                 Appearance=re_data['id_appearance'],
                                                                                 Id_customer=customer,
                                                                                 Id_Employee=employee,
                                                                                 Id_device=device,
                                                                                 ID_service=service,
                                                                                 ID_Detail_fix=detail)

            # Заказ
            status = get_object_or_404(Status, Id_Status=re_data['id_status'])
            contract = Contract_fix2.objects.last()
            master = get_object_or_404(Master, Id_Master=re_data['id_master'])
            Orderentity_fix2.objects.filter(ID_Order=re_data['order']).update(Id_Status=status,Id_contract=contract, Id_Master=master)

        # Удаление
        if re_data['_method'] == "DELETE":

            order = re_data['order']
            print(order)
            data = Orderentity_fix2.objects.get(ID_Order= order)
            data.delete()

            data = Contract_fix2.objects.get(Id_contract=re_data['contract'])
            data.delete()

            data = Device.objects.get(Id_device=re_data['device'])
            data.delete()

            return redirect('show_appeals')



    return render(request, 'top_komraz/appeals.html',{'orders': orders})

#Обращения: Добавиление
def show_appeals_add(request):
    orders = Orderentity_fix2.objects.all()
    statuss = Status.objects.all()
    masters = Master.objects.all()
    contracts = Contract_fix2.objects.all()
    devices = Detail_fix2.objects.all()
    creators = Creator.objects.all()
    kinddevices = KindDevice.objects.all()
    services = Service.objects.all()
    customres = Customer.objects.all()
    details = Detail_fix2.objects.all()
    return render(request, 'top_komraz/appeals_add.html',{'orders': orders, 'statuss': statuss, 'masters': masters, 'contracts': contracts, 'devices': devices,
                                                      'creators': creators, 'kinddevices': kinddevices, 'services': services, 'customres': customres,
                                                      'details': details})

#Обращения: Редактирование
def show_appeals_update(request,id):
    orders = get_object_or_404(Orderentity_fix2, ID_Order=id)
    statuss = Status.objects.all()
    masters = Master.objects.all()
    contracts = Contract_fix2.objects.all()
    devices = Detail_fix2.objects.all()
    creators = Creator.objects.all()
    kinddevices = KindDevice.objects.all()
    services = Service.objects.all()
    customres = Customer.objects.all()
    details = Detail_fix2.objects.all()
    return render(request, 'top_komraz/appeals_update.html',{'orders': orders, 'statuss': statuss, 'masters': masters, 'contracts': contracts, 'devices': devices,
                                                      'creators': creators, 'kinddevices': kinddevices, 'services': services, 'customres': customres,
                                                      'details': details})

#Запчасти в наличии
@csrf_exempt
def show_parts_stock(request):
    details = Detail_fix2.objects.all()
    if request.method == 'POST':
        re_data = request.POST

        #Редактирование
        if re_data['_method'] == "PUT":
            Detail_fix2.objects.filter(Id_Detail =re_data['detail']).update(Number=re_data['id_number'])

    return render(request, 'top_komraz/parts_stock.html',{'details': details})

#Запчасти в наличии: Редактирование количества
def show_parts_stock_update(request,id):
    detail = get_object_or_404(Detail_fix2,  Id_Detail =id)
    return render(request, 'top_komraz/parts_stock_update.html',{'detail': detail})

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


