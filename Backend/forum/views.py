from django.shortcuts import render, redirect
from .models import topik
from .models import komentar
from .forms import KomentarForm, TopikForm

# Create your views here.

def index (request):
	semua_akun = topik.objects.all()
	print(semua_akun)
	context = {
		'semua_akun': semua_akun,
	}


	return render(request, 'forum/forumberanda.html', context)

def isi_berita (request, slugInput):

	posts = topik.objects.get(slug=slugInput)
	posts_komentar = komentar.objects.all().filter(id_topik = slugInput)
	print(posts_komentar)

	context = {
		'semua_akun': posts,
		'posts_komentar': posts_komentar,
	}

	username="<h1>{}</h1>".format(posts.username)
	judul="<h1>{}</h1>".format(posts.judul)
	isi_topik="<h1>{}</h1>".format(posts.isi_topik)
	tanggal_upload="<h1>{}</h1>".format(posts.tanggal_upload)
	gambar="<h1>{}</h1>".format(posts.gambar)
	kategori="<h1>{}</h1>".format(posts.kategori)

	return render(request, 'forum/forum.html', context)

def create (request):
	buat_threat = TopikForm(request.POST or None)

	if request.method == 'POST':
		if buat_threat.is_valid():
			buat_threat.save()

		return redirect('/forum/')

	context = {
		'buat_threat' : buat_threat,
	}


	return render(request, 'forum/threat.html', context)


def buat_komentar(request):
	akun_form = KomentarForm(request.POST or None)

	if request.method == 'POST':
		if akun_form.is_valid():
			akun_form.save()

		return redirect('/forum/')

	context = {
		'akun_form' : akun_form,
	}

	return render(request, 'forum/buatkomentar.html', context)