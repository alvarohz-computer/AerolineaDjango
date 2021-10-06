from rest_framework import serializers
from .models import Empleado, Cargo, Proyecto

class EmpleadoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Empleado
        fields = ('__all__')
        extra_kwargs ={
            "nombre":{
                "error_messages": {"blank": "nombre vacio"}
            }
        }

    def validate_sueldo(self, value):
        if value<100:
            raise serializers.ValidationError('El sueldo debe ser mayor a 100')
        return value
        
    def validate(self, data):

        if data['nombre']==data['correo']:
            raise serializers.ValidationError('Nombre igual al correo')
        return data

        # fields = (
        #     'nombre',
        #     'correo',
        #     'telefono',
        #     'sueldo',
        # )
class CargoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Cargo
        fields = ('__all__')

class ProyectoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Proyecto
        fields = ('__all__')

class EmpleadoSerializerConCargo(serializers.ModelSerializer):
    cargo = CargoSerializer()
    proyecto = ProyectoSerializer(many=True)
    class Meta:
        model = Empleado
        fields = ('__all__')


class ProyectoSerializerFecha(serializers.Serializer):
    proyecto_empleado = serializers.CharField()
    proyecto_empleado__nombre = serializers.CharField()
    nombre_proyecto = serializers.CharField()
    fecha_inicio = serializers.DateField()
    fecha_fin = serializers.DateField()

class ProyectoSerializerResumn(serializers.Serializer):
    nombre_proyecto = serializers.CharField()
    monto = serializers.DecimalField(
        max_digits=8, decimal_places=2)
    nemp = serializers.IntegerField()

