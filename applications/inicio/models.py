from django.db import models

# Create your models here.
class Habilidades(models.Model):
    habilidades = models.CharField("Habilidades", max_length=50)
    class Meta:
        verbose_name = "Habilidades"
        verbose_name_plural = "Habilidades"
    def __str__(self) -> str:
        return str(self.id) + ": " + self.habilidades

class Departamento(models.Model):
    nombre_depto = models.CharField("Departamento", max_length=50)
    nombre_corto = models.CharField("Nombre Corto", max_length=20, unique=True)
    
    def __str__(self) -> str:
        return str(self.id) + ": " + self.nombre_depto

    class Meta:
        verbose_name = "Departamento"
        verbose_name_plural = "Deptos"
        ordering = ['-nombre_depto']
        unique_together = ('nombre_depto', 'nombre_corto')

class Persona(models.Model):
    nombre = models.CharField('Nombre', max_length=30, blank=False)
    edad = models.IntegerField(null=True)
    depto = models.ForeignKey(Departamento, on_delete=models.CASCADE)
    activo = models.BooleanField('Activa', default=True)
    habilidades = models.ManyToManyField(Habilidades)

    class Meta:
        ordering = ['-nombre']

    def __str__(self) -> str:
        return str(self.id) + ": " + self.nombre + " | " + str(self.edad)