from django.db import models
from django.core.exceptions import ValidationError


message = """"Hola, me gustaría recibir más información sobre las *Promociones y Tratamientos de Flebella*.
Enviado desde flebiland webapp https://flebiland.flebella.com

Tratamiento de referencia: *...*
_Distintivo: ..._
https://flebiland.flebella.com/services

Promoción de referencia: *...*
_Distintivo: ..._
https://flebiland.flebella.com/promociones

Muchas Gracias,"""

def validate_numeric_whatsapp_number(value):
    if not value.isdigit():
        raise ValidationError('WhatsApp number must contain only numeric characters.')

class CallToAction(models.Model):

    title = models.CharField(max_length=255, default="...")
    description = models.TextField(
            null=True,
            blank=True,
            default="...",
            )

    whatsapp_number = models.CharField(
        max_length=20,
        null=True,
        blank=True,
        validators=[validate_numeric_whatsapp_number],
        default="5491168653898"
        )
    whatsapp_message = models.TextField(null=True, blank=True, default=message)
    btn_text = models.CharField(max_length=50, default="Agenda tu cita")

    background_image = models.ImageField(null=True, blank=True, upload_to="images/promociones/call2action/", default=None)
    is_mainpage_enabled = models.BooleanField(default=False)
 
    def __str__(self):
        return self.title
