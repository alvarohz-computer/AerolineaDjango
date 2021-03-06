# Generated by Django 3.2.7 on 2021-09-28 00:20

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Departamento',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_depto', models.CharField(max_length=50, verbose_name='Departamento')),
                ('nombre_corto', models.CharField(max_length=20, unique=True, verbose_name='Nombre Corto')),
            ],
            options={
                'verbose_name': 'Departamento',
                'verbose_name_plural': 'Deptos',
                'ordering': ['-nombre_depto'],
                'unique_together': {('nombre_depto', 'nombre_corto')},
            },
        ),
        migrations.CreateModel(
            name='Habilidades',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('habilidades', models.CharField(max_length=50, verbose_name='Habilidades')),
            ],
            options={
                'verbose_name': 'Habilidades',
                'verbose_name_plural': 'Habilidades',
            },
        ),
        migrations.CreateModel(
            name='Persona',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=30, verbose_name='Nombre')),
                ('edad', models.IntegerField(null=True)),
                ('activo', models.BooleanField(default=True, verbose_name='Activa')),
                ('depto', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inicio.departamento')),
                ('habilidades', models.ManyToManyField(to='inicio.Habilidades')),
            ],
            options={
                'ordering': ['-nombre'],
            },
        ),
    ]
