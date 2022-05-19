from django.db import models
from django.contrib.auth.models import User
from django.utils.text import slugify

# Create your models here.

class topik(models.Model):

	List_Kategori = [
		('UMKM', 'UMKM'),
		('Berita', 'Berita'),
		('Forum', 'Forum'),
		('Rekomendasi', 'Rekomendasi'),
		('Aplikasi', 'Aplikasi'),
		('Serba Serbi Ramadhan', 'Serba Serbi Ramadhan'),
		('Modal UMKM', 'Modal UMKM'),

	]

	username = models.ForeignKey(User, on_delete=models.CASCADE)
	judul = models.CharField(max_length=255)
	isi_topik = models.TextField()
	tanggal_upload = models.DateTimeField(auto_now_add=True)
	gambar = models.ImageField(upload_to='static/forum/%Y/%m/%d')
	kategori = models.CharField(max_length=100, choices=List_Kategori)
	slug = models.SlugField(primary_key=True,blank=True, editable=False)

	def save(self):
		self.slug = slugify(self.judul)
		super(topik, self).save()

	def __str__(self):
		return "{}".format(self.judul)


class komentar(models.Model):
	username_user = models.ForeignKey(User, on_delete=models.CASCADE)
	tanggal_upload = models.DateTimeField(auto_now_add=True)
	isi_komentar = models.TextField()
	id_topik = models.ForeignKey(topik, on_delete=models.CASCADE)

	def __str__(self):
		return "{}.{}".format(self.id_topik, self.isi_komentar)