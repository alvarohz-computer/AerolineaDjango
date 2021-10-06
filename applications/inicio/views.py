from django.shortcuts import render
from django.views.generic import (
    TemplateView, 
    ListView, 
    CreateView,
    UpdateView,
    DeleteView
    )
from .forms import PersonaForm
from .models import Persona
from django.urls import reverse_lazy
# Create your views here.
def inicio(request):
    mensaje = {
        'msg': 'Hola Django', 
        'Nombres': ['alicia', 'beto', 'camila']
    }
    return render(request, 'inicio/index.html', mensaje)

class inicioView(TemplateView):
    template_name = "inicio/index.html"

class listaPersonas(ListView):
    template_name = "inicio/lista_personas.html"
    model = Persona
    #queryset = Persona.objects.filter(depto__nombre_depto='sonsonate')
    context_object_name = 'lista_personas'

class addPersona(CreateView):
    template_name = "inicio/add_persona.html"
    model = Persona
    fields = ['nombre','edad', 'depto', 'activo', 'habilidades']
    success_url = reverse_lazy('inicio_app:lista-personas')


class updatePersona(UpdateView):
    model = Persona
    template_name = "inicio/update_persona.html"
    fields = ['nombre','edad', 'depto', 'activo', 'habilidades']
    success_url = reverse_lazy('inicio_app:lista-personas')

class deletePersona(DeleteView):
    model = Persona
    template_name = "inicio/delete_persona.html"
    success_url = reverse_lazy('inicio_app:lista-personas')

class addPersonaForm(CreateView):
    template_name = "inicio/add_persona.html"
    model = Persona
    form_class = PersonaForm
    success_url = reverse_lazy('inicio_app:lista-personas')