from django.contrib import admin

# Register your models here.
from .models import data_umkm

class PostUMKM(admin.ModelAdmin):
	list_display = ('nama_pemilik', 'nama_umkm', 'kecamatan')
	list_filter = ('kecamatan', )
	ordering = ('nama_pemilik',)
	search_fields = ('nama_pemilik', 'nama_umkm', 'kecamatan')

admin.site.register(data_umkm, PostUMKM)