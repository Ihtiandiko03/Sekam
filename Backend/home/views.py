from django.shortcuts import render, redirect
from django.contrib.auth.forms import UserCreationForm
from .forms import UserRegisterForm
from django.contrib import messages
from django.contrib.auth.decorators import login_required

# Create your views here.


def index(request):
    return render(request, 'home/index.html')

def register(request):
    if request.method == "POST":
        form = UserRegisterForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            messages.success(request, f'Hi {username}, akun anda sudah didaftarkan. Silahkan login')
            return redirect('home')
    else:
        form = UserRegisterForm()

    return render(request, 'home/register.html', {'form': form})
