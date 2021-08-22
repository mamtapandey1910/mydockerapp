from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.

def hello(request):
	return HttpResponse("<center><h1>Hello world</h1></center>")
