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
	posts_komentar = komentar.objects.all().filter(id_topik = slugInput).order_by('-tanggal_upload')
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


def buat_komentar(request, id_topik):

	akun_form = topik.objects.get(slug = id_topik)
	# notes = akun_form.objects.all()
	# akun_form2 = KomentarForm(request.POST or None)

	if request.method == 'POST':
		form = KomentarForm(request.POST)
		if form.is_valid():
			note = form.save(commit=False)
			note.username_user = request.user
			note.id_topik = akun_form
			note.save()


		return redirect('/forum/')
	else:
		form = KomentarForm()


	return render(request,'forum/buatkomentar.html', {'akun_form':form})

def delete(request, delete_id):
	komentar.objects.filter(id=delete_id).delete()
	return redirect('/forum/')

def update(request, update_id):
	akun_update = komentar.objects.get(id=update_id)

	data = {
		'Komentar': akun_update.isi_komentar,	
	}
	akun_form = KomentarForm(request.POST or None, initial=data, instance=akun_update)
	
	if request.method == 'POST':
		if akun_form.is_valid():
			akun_form.save()

		return redirect('/forum/')

	context = {
		'akun_form' : akun_form,
	}

	return render(request, 'forum/buatkomentar.html', context)