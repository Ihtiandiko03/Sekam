from django.db import models
from django.utils.text import slugify

# Create your models here.

class berita(models.Model):
	id=models.IntegerField(primary_key=True, editable=False)
	judul = models.CharField(max_length=200)
	tanggal = models.DateField()
	penulis= models.CharField(max_length=100)
	editor= models.CharField(max_length=100)
	gambar= models.ImageField(upload_to='static/berita/%Y/%m/%d')
	isi_berita= models.TextField()
	slug = models.SlugField(blank=True, editable=False)
	# created = models.DateTimeField(auto_now_add=True)

	def save(self):
		self.slug = slugify(self.judul)
		super(berita, self).save()


	# def __str__(self):
	# 	return "{}".format(self.judul)