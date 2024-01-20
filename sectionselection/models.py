from django.db import models

class SectionEnabled(models.Model):
    SECTION_CHOICES = [
        ('flebi/section/about.html', 'main - nosotros'),
        ('flebi/section/contact.html', 'main - contacto'),
        ('flebi/section/faq.html', 'main - preguntas frecuentes'),
        ('flebi/section/features.html', 'main - distintivos'),
        ('flebi/section/portfolio.html', 'main - experiencia'),
        ('flebi/section/stats.html', 'main - estadísticas'),
        ('flebi/section/team.html', 'main - equipo'),
        ('flebi/section/testimonials.html', 'main - testimonios'),
        ('hero/section/hero.html', 'section - hero'),
        ('calltoaction/section/call2action.html', 'section - calltoaction'),
        ('promociones/section/posts.html', 'section - promociones - listado'),
        ('promociones/section/post_details.html', 'section - promociones - detalle'),
        ('services/section/posts.html', 'section - servicios - listado'),
        ('services/section/post_details.html', 'section - servicios - detalle'),
    ]

    name = models.CharField(max_length=255)
    html_id = models.CharField(max_length=255, unique=True)
    section_path = models.CharField(max_length=255, choices=SECTION_CHOICES, unique=True)

    def __str__(self):
        return f"{self.get_section_path_display()}"


class PageEnabled(models.Model):
    TEMPLATE_CHOICES = [
        ('flebi/index.html', 'page - main'),
        ('services/home.html', 'page - servicios - listado'),
        ('services/article_details.html', 'page - servicios - detalle'),
        ('promociones/home.html', 'page - promociones - listado'),
        ('promociones/article_details.html', 'page - promociones - detalle'),
    ]

    name = models.CharField(max_length=255)
    template_path = models.CharField(max_length=255, choices=TEMPLATE_CHOICES, unique=True)
    section_selection = models.ManyToManyField(SectionEnabled, through='SectionSelection')

    def __str__(self):
        return f"{self.get_template_path_display()}"


class SectionSelection(models.Model):
    page = models.ForeignKey(PageEnabled, on_delete=models.CASCADE)
    section = models.ForeignKey(SectionEnabled, on_delete=models.CASCADE)
    sort_order = models.IntegerField()
    is_visible = models.BooleanField(default=True)
    nav_enabled = models.BooleanField(default=False)

    class Meta:
        ordering = ['sort_order']
        # Ensure that the combination of 'page' and 'section' is unique
        unique_together = ['page', 'section']