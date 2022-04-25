from django.contrib import admin

# Register your models here.
from .models import berita

class PostAdmin(admin.ModelAdmin):
	readonly_fields = ['slug',]
	list_display = ('judul', 'penulis', 'tanggal')
	list_filter = ('tanggal', )
	ordering = ('judul',)
	search_fields = ('judul', 'penulis', 'tanggal')

	

admin.site.register(berita, PostAdmin)

admin.site.site_header = 'Halaman Dashboard Admin'
