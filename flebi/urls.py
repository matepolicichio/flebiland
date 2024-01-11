from django.urls import path
from . import views

app_name = 'flebi'
urlpatterns = [
    path('', views.index, name='index'),
]


