'''from django.contrib import admin
from django.urls import include,path

urlpatterns = [
    path('polls/', include('polls.urls')),
    path('admin/', admin.site.urls),
]
'''

from django.contrib import admin  
from django.urls import path  
from polls import views  
urlpatterns = [  
    path('admin/', admin.site.urls),  
    path('exc', views.exc),  
    path('show',views.show),  
    path('edit/<int:id>', views.edit),  
    path('update/<int:id>', views.update),  
    path('delete/<int:id>', views.destroy),  
]  