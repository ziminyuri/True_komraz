# Generated by Django 2.2.1 on 2019-05-13 15:58

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('top_komraz', '0006_implemented'),
    ]

    operations = [
        migrations.CreateModel(
            name='Period',
            fields=[
                ('id_period', models.AutoField(primary_key=True, serialize=False)),
                ('Name', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'period',
            },
        ),
        migrations.CreateModel(
            name='Procurement_plan',
            fields=[
                ('id_plan', models.AutoField(primary_key=True, serialize=False)),
                ('Quantity', models.IntegerField()),
                ('Id_Employee', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='top_komraz.Employee')),
                ('id_period', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='top_komraz.Period')),
            ],
            options={
                'db_table': 'procurement_plan',
            },
        ),
        migrations.CreateModel(
            name='Plan',
            fields=[
                ('id_plan_delivery', models.AutoField(primary_key=True, serialize=False)),
                ('Quantity', models.IntegerField()),
                ('ID_Detail', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='top_komraz.Detail_fix2')),
            ],
            options={
                'db_table': 'plan',
            },
        ),
    ]
