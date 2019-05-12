from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('kind_services', views.show_kind_services, name='show_kind_services'),
    path('kind_detail', views.show_kind_detail, name='show_kind_detail'),
    path('kind_device', views.show_kind_device, name='show_kind_device'),
    path('creator', views.show_kind_creator, name='show_kind_creator'),
    path('appeals', views.show_appeals, name='show_appeals'),
    path('appeals/add', views.show_appeals_add, name='show_appeals_add'),
    path('appeals/update/<int:id>', views.show_appeals_update, name='show_appeals_update'),
    path('parts_stock', views.show_parts_stock, name='show_parts_stock'),
    path('parts_stock/update/<int:id>', views.show_parts_stock_update, name='show_parts_stock_update'),
    path('parts_sold', views.show_parts_sold, name='show_parts_sold'),
    path('payments', views.show_payments, name='show_payments'),
    path('sales', views.show_sales, name='show_sales'),
    path('procurement', views.show_procurement, name='show_procurement'),
    path('acceptance_certificate', views.show_acceptance_certificate, name='show_acceptance_certificate'),
    path('contract_supply', views.show_contract_supply, name='show_contract_supply'),
    path('certificate_of_completion', views.show_certificate_of_completion, name='show_certificate_of_completion'),
]