from django.shortcuts import render, redirect
from .models import berita
from .forms import BeritaForm
from django.http import HttpResponse

# Create your views here.

def index (request):

	semua_akun = berita.objects.all().order_by('-tanggal')
	context = {
		'semua_akun': semua_akun,
	}


	return render(request, 'berita/index.html', context)

def create(request):
	akun_form = BeritaForm(request.POST or None)

	if request.method == 'POST':
		if akun_form.is_valid():
			akun_form.save()

		return redirect('../')

	context = {
		'akun_form' : akun_form,
	}

	return render(request, 'berita/create.html', context)

def delete(request, delete_id):
	berita.objects.filter(id=delete_id).delete()
	return redirect('../')

def update(request, update_id):
	akun_update = berita.objects.get(id=update_id)

	data = {
		'judul': akun_update.judul,
		'tanggal': akun_update.tanggal,
		'penulis': akun_update.penulis,
		'editor': akun_update.editor,
		'gambar': akun_update.gambar,
		'isi_berita': akun_update.isi_berita,		
	}
	akun_form = BeritaForm(request.POST or None, initial=data, instance=akun_update)
	
	if request.method == 'POST':
		if akun_form.is_valid():
			akun_form.save()

		return redirect('../')

	context = {
		'title' : 'Update Berita',
		'akun_form' : akun_form,
	}

	return render(request, 'berita/create.html', context)

def singlePost(request, slugInput):
	posts = berita.objects.get(slug=slugInput)

	context = {
		'semua_akun': posts
	}

	judul="<h1>{}</h1>".format(posts.judul)
	tanggal="<h1>{}</h1>".format(posts.tanggal)
	penulis="<h1>{}</h1>".format(posts.penulis)
	gambar="<h1>{}</h1>".format(posts.gambar)
	isi_berita="<h1>{}</h1>".format(posts.isi_berita)
	
	return render(request, 'berita/news.html', context)


def event (request):
	return render(request, 'berita/eventnews.html')
