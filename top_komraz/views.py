from django.shortcuts import render, get_object_or_404, redirect
from .models import *
from django.views.decorators.csrf import csrf_exempt
from docx import Document
from django.http import HttpResponse
import os
import re
from decimal import Decimal

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
    re_data = request.POST
    number_act = re_data['number_act']
    fio = re_data['fio']
    address = re_data['address']
    phone = re_data['phone']
    model = re_data['model']
    imei = re_data['imei']
    appearance = re_data['appearance']
    name_work = re_data['name_work']
    defect = re_data['defect']
    employee = re_data['employee']
    date = re_data['date']

    for p in document.paragraphs:
        p.text = re.sub(r'НОМЕР', number_act, p.text)
        p.text = re.sub(r'КЛИЕНТ', fio, p.text)
        p.text = re.sub(r'АДРЕС', address, p.text)
        p.text = re.sub(r'ТЕЛЕФОН', phone, p.text)
        p.text = re.sub(r'НАИМЕНОВАНИЕ', model, p.text)
        p.text = re.sub(r'МОДЕЛЬ', imei, p.text)
        p.text = re.sub(r'ОПИСАНИЕ', appearance, p.text)
        p.text = re.sub(r'ВИД РЕМОНТА', name_work, p.text)
        p.text = re.sub(r'ДЕФЕКТ', defect, p.text)
        p.text = re.sub(r'СОТРУДНИК', employee, p.text)
        p.text = re.sub(r'ДАТА', date, p.text)

    document.save('top_komraz/act_enter_downloads.docx')
    filename = 'top_komraz/act_enter_downloads.docx'
    data = open(filename, "rb").read()
    response = HttpResponse(data, content_type='application/docx')
    response['Content-Length'] = os.path.getsize(filename)
    response['Content-Disposition'] = 'attachment; filename=act_enter_downloads.docx'

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
    deliverys = Request_delivery3.objects.all()
    return render(request, 'top_komraz/contract_supply.html',{'deliverys': deliverys})


#Заполненный договор на поставку
@csrf_exempt
def download_supply(request):
    document = Document('top_komraz/supply_template.docx')
    re_data = request.POST
    date1 = re_data['date']
    number_act = re_data['number_act']
    provider = re_data['provider']
    detail = re_data['detail']
    quantity = re_data['quantity']
    price = re_data['price']
    address = re_data['address']
    phone = re_data['phone']
    employee = re_data['employee']

    price1 = price.split(',')
    end_price = int(price1[0]) * int(quantity)
    price1 = str(end_price)

    for p in document.paragraphs:
        p.text = re.sub(r'НОМЕР', number_act, p.text)
        p.text = re.sub(r'ДАТА', date1, p.text)
        p.text = re.sub(r'ПОСТАВЩИК', provider, p.text)
        p.text = re.sub(r'ЧАСТИ', detail, p.text)
        p.text = re.sub(r'КОЛИЧЕСТВО', quantity, p.text)
        p.text = re.sub(r'ЦЕНА', price, p.text)
        p.text = re.sub(r'СТОИМОСТЬ', price1, p.text)
        p.text = re.sub(r'АДРЕСОК', address, p.text)
        p.text = re.sub(r'ТЕЛЕФОН', phone, p.text)
        p.text = re.sub(r'СОТРУДНИК', employee, p.text)

    document.save('top_komraz/download_supply.docx')
    filename = 'top_komraz/download_supply.docx'
    data = open(filename, "rb").read()
    response = HttpResponse(data, content_type='application/docx')
    response['Content-Length'] = os.path.getsize(filename)
    response['Content-Disposition'] = 'attachment; filename=download_supply.docx'

    return response

#Форма договора на поставку
@csrf_exempt
def download_supply_form(request):
    document = Document('top_komraz/supply.docx')
    document.save('top_komraz/downloads_supply_form.docx')
    filename = 'top_komraz/downloads_supply_form.docx'
    data = open(filename, "rb").read()
    response = HttpResponse(data, content_type='application/docx')
    response['Content-Length'] = os.path.getsize(filename)
    response['Content-Disposition'] = 'attachment; filename=downloads_supply_form.docx'

    return response

#Акт выполненных работ
def show_certificate_of_completion(request):
    certificate = Certificate_fix2.objects.all()
    return render(request, 'top_komraz/certificate_of_completion.html',{'certificates': certificate})

#Заполненный акт выполненных работ
@csrf_exempt
def download_act_end_template(request):
    document = Document('top_komraz/act_end_template.docx')
    re_data = request.POST

    number_act = re_data['number_act']
    fio = re_data['fio']
    address = re_data['address']
    phone = re_data['phone']
    model = re_data['model']
    imei = re_data['imei']
    name_work = re_data['name_work']
    defect = re_data['defect']
    employee = re_data['employee']
    date = re_data['date']

    for p in document.paragraphs:
        p.text = re.sub(r'НОМЕР', number_act, p.text)
        p.text = re.sub(r'СОТРУДНИК', employee, p.text)
        p.text = re.sub(r'ДАТА', date, p.text)
        p.text = re.sub(r'КЛИЕНТ', fio, p.text)
        p.text = re.sub(r'АДРЕС', address, p.text)
        p.text = re.sub(r'ТЕЛЕФОН', phone, p.text)
        p.text = re.sub(r'НАИМЕНОВАНИЕ', model, p.text)
        p.text = re.sub(r'МОДЕЛЬ', imei, p.text)
        p.text = re.sub(r'УСЛУГА', name_work, p.text)
        p.text = re.sub(r'ЧАСТЬ', defect, p.text)

    document.save('top_komraz/act_end_downloads.docx')
    filename = 'top_komraz/act_end_downloads.docx'
    data = open(filename, "rb").read()
    response = HttpResponse(data, content_type='application/docx')
    response['Content-Length'] = os.path.getsize(filename)
    response['Content-Disposition'] = 'attachment; filename=act_end_downloads.docx'

    return response

#Форма акта выполненных работ
@csrf_exempt
def download_act_end(request):
    document = Document('top_komraz/act_end.docx')
    document.save('top_komraz/act_end_downloads.docx')
    filename = 'top_komraz/act_end_downloads.docx'
    data = open(filename, "rb").read()
    response = HttpResponse(data, content_type='application/docx')
    response['Content-Length'] = os.path.getsize(filename)
    response['Content-Disposition'] = 'attachment; filename=act_end_downloads.docx'

    return response

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
    details = Implemented.objects.all()
    return render(request, 'top_komraz/parts_sold.html',{'details': details})

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


