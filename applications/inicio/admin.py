from django.contrib import admin
from .models import (
    Departamento, 
    Habilidades, 
    Persona
    )
# Register your models here.
#admin.site.register(Persona)
admin.site.register(Departamento)
admin.site.register(Habilidades)

class PersonaAdmin (admin.ModelAdmin):
    list_display = (
        'nombre',
        'edad',
        'depto',
        'activo',
        'si_adulto',
    )

    def si_adulto(self, obj):
        if obj.edad>=18:
            return 'ADULTO'
        else:
            return 'NIÑO'

    search_fields = ('nombre',)
    list_filter = ('depto','habilidades')

admin.site.register(Persona, PersonaAdmin)
