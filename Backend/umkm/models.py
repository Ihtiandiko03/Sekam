from django.db import models

# Create your models here.

class data_umkm (models.Model):
	nama_pemilik = models.CharField(max_length=200, blank=True)
	nama_umkm = models.CharField(max_length=200)
	alamat = models.TextField(blank=True)
	kecamatan = models.CharField(max_length=200, blank=True)
	foto_kedai = models.ImageField(blank=True)
	logo =  models.ImageField(blank=True)
	daftar_produk = models.TextField(blank=True)
	foto_produk = models.ImageField(blank=True)

	# def __str__(self):
	# 	return "{}".format(self.nama_umkm)
