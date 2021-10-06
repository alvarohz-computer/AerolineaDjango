from django.db import models
from django.db.models import Q,Sum,Avg,Count

class ProyectoManager(models.Manager):
    def listar_proyectos(self, fecha1, fecha2):
        resultado = self.values(
            'proyecto_empleado',
            'proyecto_empleado__nombre',
            'nombre_proyecto',
            'fecha_inicio',
            'fecha_fin',
        ).filter(
            fecha_inicio__range=(fecha1, fecha2)
        )
        return resultado

    def sueldos_por_proyecto(self):
        resultado = self.values(
            'nombre_proyecto',
        ).annotate(
            monto = Sum('proyecto_empleado__sueldo'),
            nemp = Count('proyecto_empleado__id')
        )
        return resultado

class EmpleadoManager(models.Manager):

    def lista_empleados(self):
        return self.all()

    def buscar_empleado(self, texto):
        resultado = self.filter(
            Q(nombre__icontains=texto) |
            Q(correo__icontains=texto)
        )
        print(self.filter(nombre__icontains=texto).query)
        return resultado

    def buscar_empleado2(self, minimo, maximo):
        resultado = self.filter(
            sueldo__gte=minimo,
            sueldo__lte=maximo
        ).order_by('-nombre','-sueldo')
        return resultado