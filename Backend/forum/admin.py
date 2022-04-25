from django.contrib import admin

# Register your models here.
from .models import topik, komentar

class PostAdmin(admin.ModelAdmin):
	readonly_fields = ['slug',]

admin.site.register(topik, PostAdmin)
admin.site.register(komentar)