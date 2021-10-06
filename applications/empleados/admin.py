from django.contrib import admin
from .models import Empleado, Cargo, Proyecto
# Register your models here.
admin.site.register(Empleado)
admin.site.register(Proyecto)
admin.site.register(Cargo)