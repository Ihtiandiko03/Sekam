from django import forms
from .models import topik, komentar

class TopikForm(forms.ModelForm):
	class Meta:
		model = topik
		fields = [
			'username',
			'judul',
			'isi_topik',
			'gambar',
			'kategori',
		]

class KomentarForm(forms.ModelForm):
	class Meta:
		model = komentar
		exclude = ('username_user','id_topik', 'tanggal_upload')
		# fields = ['isi_komentar']