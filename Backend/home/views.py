from django.shortcuts import render, redirect
from django.contrib.auth.forms import UserCreationForm
from .forms import UserRegisterForm
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import Group
from django.contrib.auth import authenticate, login

# Create your views here.


def index(request):
    return render(request, 'home/index.html')

def register(request):
    if request.method == "POST":
        form = UserRegisterForm(request.POST)
        

        if form.is_valid():
            user = form.save()
            group = form.cleaned_data['group']      
            group.user_set.add(user)

            username = form.cleaned_data.get('username')
            messages.success(request, f'Hi {username}, akun anda sudah didaftarkan.')
            new_user = authenticate(username=form.cleaned_data['username'],
                                    password=form.cleaned_data['password1'],
                                    )
            login(request, new_user)
            return redirect('home')
    else:
        form = UserRegisterForm()

    return render(request, 'home/register.html', {'form': form})
