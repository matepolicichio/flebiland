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

class Contact(models.Model):
    nombre = models.CharField(max_length=100)
    email = models.EmailField()
    titulo = models.CharField(max_length=200)
    mensaje = models.TextField()

    def __str__(self):
        return self.email
    
class Header(models.Model):

    logo_image = models.ImageField(null=True, blank=True, upload_to="images/header/", default=None)
    logo_text = models.CharField(max_length=255, default='<div class="d-flex flex-column"><h1 class="no-margin">Line1</h1><h2 class="no-margin">Line2</h2></div>')
    
    is_getstarted_enabled = models.BooleanField(default=False)
    getstarted_link2section = models.CharField(max_length=255, default="nosotros")
    getstarted_text = models.CharField(max_length=255, default="Comenzar")

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
 
    def __str__(self):
        return "Header"