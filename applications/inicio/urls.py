from django.urls import path
from . import views

app_name = 'inicio_app'

urlpatterns = [
    path('inicio/hola/', views.inicio),
    path('inicio/hola-view/', views.inicioView.as_view()),
    path('inicio/lista-personas/', views.listaPersonas.as_view(), name='lista-personas'),
    path('inicio/add-persona/', views.addPersona.as_view()),
    path('inicio/update-persona/<pk>/', views.updatePersona.as_view()),
    path('inicio/delete-persona/<pk>/', views.deletePersona.as_view(), name='delete'),
    path(
        'inicio/add-persona-form/', 
        views.addPersonaForm.as_view()
    ),
]
