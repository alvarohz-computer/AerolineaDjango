from django.db import models
from django.db.models.fields import EmailField
from model_utils.models import TimeStampedModel
from .managers import EmpleadoManager, ProyectoManager
# Create your models here.
class Proyecto(TimeStampedModel):
    nombre_proyecto = models.CharField("Nombre proyecto", max_length=50)
    fecha_inicio = models.DateField("Fecha inicio", auto_now=False, auto_now_add=False)
    fecha_fin = models.DateField("Fecha fin", auto_now=False, auto_now_add=False)

    objects = ProyectoManager()

    def __str__(self):
        return self.nombre_proyecto

class Cargo(TimeStampedModel):
    cargo = models.CharField("Cargo", max_length=50)

    def __str__(self):
        return self.cargo
        
class Empleado(TimeStampedModel):
    nombre = models.CharField('Nombre', max_length=50)
    correo = models.EmailField('Correo', max_length=100)
    telefono = models.CharField('Telefono', max_length=30)
    sueldo = models.DecimalField('Sueldo', max_digits=8, decimal_places=2)
    proyecto = models.ManyToManyField(Proyecto, related_name='proyecto_empleado', blank=False)
    cargo = models.ForeignKey("Cargo",on_delete=models.CASCADE, null=True, related_name='cargo_empleado')
    #vinculamos el manager con el modelo
    objects = EmpleadoManager()

    def __str__(self):
        return self.nombre