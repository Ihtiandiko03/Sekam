from django import forms
from .models import topik, komentar

class TopikForm(forms.ModelForm):
	class Meta:
		model = topik
		fields = [
			'username',
			'judul',
			'isi_topik',
			'tanggal_upload',
			'gambar',
			'kategori',
		]

class KomentarForm(forms.ModelForm):
	class Meta:
		model = komentar
		fields = [
			'username_user',
			'tanggal_upload',
			'isi_komentar',
			'id_topik',
		]