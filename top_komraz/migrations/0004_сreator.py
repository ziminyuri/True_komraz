# Generated by Django 2.2.1 on 2019-05-04 13:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('top_komraz', '0003_kinddevice'),
    ]

    operations = [
        migrations.CreateModel(
            name='Сreator',
            fields=[
                ('Id_creator', models.AutoField(primary_key=True, serialize=False)),
                ('Name_creator', models.CharField(max_length=255)),
                ('Cifer_creator', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'creator',
            },
        ),
    ]
