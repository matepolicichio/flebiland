from django.db import models
from django.core.exceptions import ValidationError


message = """"Hola, me gustaría recibir más información sobre las *Promociones y Tratamientos de Flebella*.
Enviado desde flebiland webapp https://flebiland.flebella.com

Tratamiento: *...*
_Distintivo: ..._
https://flebiland.flebella.com/services

Pack: *...*
_Promo: ..._
https://flebiland.flebella.com/promociones

Muchas Gracias,"""


def validate_numeric_whatsapp_number(value):
    if not value.isdigit():
        raise ValidationError('WhatsApp number must contain only numeric characters.')

class Hero(models.Model):

    title = models.CharField(max_length=255, default="Flebella Medicina Estética")
    description = models.TextField(
            null=True,
            blank=True,
            default="La mejor Clínica Estética de Buenos Aires",
            )

    background_image = models.ImageField(null=True, blank=True, upload_to="images/hero/", default=None)
    
    is_form_enabled = models.BooleanField(default=False)
    form_placeholder = models.CharField(max_length=255, default="Ingrese su email")
    form_value = models.CharField(max_length=255, default="Suscribirme")

    is_whatsapp_enabled = models.BooleanField(default=True)    
    whats_number = models.CharField(
        max_length=20,
        null=True,
        blank=True,
        validators=[validate_numeric_whatsapp_number],
        default="5491168653898"
        )
    whats_message = models.TextField(null=True, blank=True, default=message)
    whats_btn_text = models.CharField(max_length=255, default="Contáctanos")
    is_enabled = models.BooleanField(default=True)
 
    def __str__(self):
        return self.title