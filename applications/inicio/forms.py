from django import forms
from django.db.models import fields
from django.forms import widgets

from .models import Habilidades, Persona

class PersonaForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        super(PersonaForm, self).__init__(*args, **kwargs)
        self.fields['edad'].error_messages = {
            'required':'la edad es obligatoria'
        }
        self.fields['nombre'].required = True
    def clean_edad(self):
        edad = self.cleaned_data['edad']
        if edad<18:
            raise forms.ValidationError(
                'la edad debe ser mayor a 18 anyos')
        return edad
    class Meta:
        model = Persona
        fields = ('__all__')
        #fields = ('nombre', 'edad','depto', 'activo', 'habilidades')
        widgets={
            'nombre': forms.TextInput(
                attrs={
                    'placeholder':'digite un nombre'
                }
            ),
            'edad': forms.NumberInput(
                attrs={
                    'placeholder':'digite una edad',
                    'class': 'form-control'
                }
            )
        }