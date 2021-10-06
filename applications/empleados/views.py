
from django import urls
from django.shortcuts import render
from rest_framework.generics import (
    ListAPIView,
    CreateAPIView,
    RetrieveAPIView,
    DestroyAPIView,
    UpdateAPIView,
    RetrieveUpdateAPIView
)
from .models import Empleado, Proyecto
from .serializers import (
    EmpleadoSerializer, 
    EmpleadoSerializerConCargo, 
    ProyectoSerializer, 
    ProyectoSerializerFecha,
    ProyectoSerializerResumn
)
import datetime
from rest_framework.response import Response
from rest_framework import status
from rest_framework.permissions import  BasePermission, IsAuthenticated

class estaAutorizado(BasePermission):
    def has_permission(self, request, view):
        rutas = ['/api/empleados/lista-empleados/','/api/empleados/lista-proyectos/',]
        print("este es el path:", request.path)
        if request.user.is_authenticated:
            if str(request.path) in rutas:
                return True
        else:
            return False

class lista_api_empleados(ListAPIView):
    #permission_classes = (IsAuthenticated,)
    permission_classes = (estaAutorizado,)
    serializer_class = EmpleadoSerializer
    #queryset = Empleado.objects.all()
    queryset = Empleado.objects.lista_empleados()

class crear_api_empleado(CreateAPIView):
    serializer_class = EmpleadoSerializer

class obtener_api_empleado(RetrieveAPIView):
    serializer_class = EmpleadoSerializer
    queryset = Empleado.objects.all()

class eliminar_api_empleado(DestroyAPIView):
    serializer_class = EmpleadoSerializer
    queryset = Empleado.objects.all()

class modificar_api_empleado(UpdateAPIView):
    serializer_class = EmpleadoSerializer
    queryset = Empleado.objects.all()
    
class modificar2_api_empleado(RetrieveUpdateAPIView):
    serializer_class = EmpleadoSerializer
    queryset = Empleado.objects.all()

class buscar_api_empleados(ListAPIView):
    serializer_class = EmpleadoSerializer
    
    def get_queryset(self):
        texto = self.kwargs['texto']
        return Empleado.objects.buscar_empleado(
            texto
        )

class buscar_api_empleados2(ListAPIView):
    serializer_class = EmpleadoSerializer
    
    def get_queryset(self):
        minimo = self.kwargs['minimo']
        maximo = self.kwargs['maximo']
        return Empleado.objects.buscar_empleado2(
            minimo,maximo
        )

class lista_api_empleados_con_cargo(ListAPIView):
    serializer_class = EmpleadoSerializerConCargo
    #queryset = Empleado.objects.all()
    queryset = Empleado.objects.lista_empleados()

class lista_api_proyecto(ListAPIView):
    serializer_class = ProyectoSerializerFecha
    
    def get_queryset(self):
        errors=[]
        f1 = self.request.query_params.get('fecha1')
        f2 = self.request.query_params.get('fecha2')
        try:
            if f1=="" or f2=="":
                errors.append('campo de fecha vacios')

            datetime.datetime.strptime(f1, '%Y-%m-%d')
            datetime.datetime.strptime(f2, '%Y-%m-%d')

            return Proyecto.objects.listar_proyectos(f1,f2)
        except ValueError:
            errors.append('Formato de fecha incorrecto')
        
        if errors:
            raise Exception(errors)

    def get(self, request):
        try:
            data = self.serializer_class(self.get_queryset(),many=True).data
            context = {"data": data}

            return Response(context, status=status.HTTP_200_OK)
        except Exception as error:
            return Response({"error": str(error)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)
        
        

class lista_api_proyecto_resumen(ListAPIView):
    serializer_class = ProyectoSerializerResumn
    queryset = Proyecto.objects.sueldos_por_proyecto()
