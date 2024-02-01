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
    

class Footer(models.Model):
    address_title = models.CharField(max_length=255, default="Dirección")
    address_description = models.TextField(
        default='''<p>
dirección...<br>
localidad..., país...<br>
</p>''')
    
    contacto_title = models.CharField(max_length=255, default="Contáctanos")
    is_contacto_description_enabled = models.BooleanField(default=False)
    contacto_description = models.TextField(
        default='''<p>
<strong>Whatsapp:</strong><br>
<span>+54 911... </span><br>
<strong>Email:</strong><br>
<span>email@email.com</span><br>
</p>''')

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

    horario_title = models.CharField(max_length=255, default="Horarios")
    horario_description = models.TextField(
        default="""<p>
<strong>Lunes, Viernes</strong><br> 10.00 - 19.00<br>
<strong>Martes, Jueves</strong><br> 11.00 - 20.00<br>
<strong>Miércoles</strong><br> 12.00 - 20.00
</p>""")
 
    redes_title = models.CharField(max_length=255, default="Seguinos")
    is_facebook_enabled = models.BooleanField(default=False)
    facebook_url = models.URLField(default='https://facebook.com')
    is_instagram_enabled = models.BooleanField(default=False)
    instagram_url = models.URLField(default='https://instagram.com')
    is_twitter_enabled = models.BooleanField(default=False)
    twitter_url = models.URLField(default='https://twitter.com/')
    is_linkedin_enabled = models.BooleanField(default=False)
    linkedin_url = models.URLField(default='https://linkedin.com/')

    copyright = models.TextField(default="""<p>
&copy; Copyright <strong><span>Company</span></strong>. All Rights Reserved.
</p>""")

    credits = models.TextField(default="""<p>
Designed by <a href="https://ingenios.com.ar/">InGenios</a> and <a href="https://bootstrapmade.com/">BootstrapMade</a>
</p>""")

    def __str__(self):
        return "Footer"