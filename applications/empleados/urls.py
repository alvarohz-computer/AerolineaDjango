from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path(
        'api/empleados/lista-empleados/',
        views.lista_api_empleados.as_view(),
    ),
    path(
        'api/empleados/add-empleado/',
        views.crear_api_empleado.as_view(),
    ),
    path(
        'api/empleados/get-empleado/<pk>/',
        views.obtener_api_empleado.as_view(),
    ),
    path(
        'api/empleados/delete-empleado/<pk>/',
        views.eliminar_api_empleado.as_view(),
    ),
    path(
        'api/empleados/mod-empleado/<pk>/',
        views.modificar_api_empleado.as_view(),
    ),
    path(
        'api/empleados/mod2-empleado/<pk>/',
        views.modificar2_api_empleado.as_view(),
    ),
    path(
        'api/empleados/buscar-empleado/<texto>/',
        views.buscar_api_empleados.as_view(),
    ),
    path(
        'api/empleados/buscar-empleado2/<minimo>/<maximo>/',
        views.buscar_api_empleados2.as_view(),
    ),
    path(
        'api/empleados/lista-empleados-con-cargo/',
        views.lista_api_empleados_con_cargo.as_view(),
    ),    
    path(
        'api/empleados/lista-proyecto/',
        views.lista_api_proyecto.as_view(),
    ),   
    path(
        'api/empleados/resumen-proyecto/',
        views.lista_api_proyecto_resumen.as_view(),
    ),  
]