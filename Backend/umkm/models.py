from django.db import models

# Create your models here.

class data_umkm (models.Model):
	nama_pemilik = models.CharField(max_length=200)
	nama_umkm = models.CharField(max_length=200)
	alamat = models.TextField()
	kecamatan = models.CharField(max_length=200)
	foto_kedai = models.ImageField()
	logo =  models.ImageField()
	daftar_produk = models.TextField()
	foto_produk = models.ImageField()

	# def __str__(self):
	# 	return "{}".format(self.nama_umkm)
