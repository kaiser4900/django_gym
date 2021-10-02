from django.shortcuts import render, redirect  
from polls.forms import ExerciseForm  
from polls.models import Exercise  
# Create your views here.  
def emp(request):  
    if request.method == "POST":  
        form = ExerciseForm(request.POST)  
        if form.is_valid():  
            try:  
                form.save()  
                return redirect('/show')  
            except:  
                pass  
    else:  
        form = ExerciseForm()  
    return render(request,'index.html',{'form':form})  
def show(request):  
    employees = Exercise.objects.all()  
    return render(request,"show.html",{'employees':employees})  
def edit(request, id):  
    employee = Exercise.objects.get(id=id)  
    return render(request,'edit.html', {'employee':employee})  
def update(request, id):  
    employee = Exercise.objects.get(id=id)  
    form = ExerciseForm(request.POST, instance = employee)  
    if form.is_valid():  
        form.save()  
        return redirect("/show")  
    return render(request, 'edit.html', {'employee': employee})  
def destroy(request, id):  
    employee = Exercise.objects.get(id=id)  
    employee.delete()  
    return redirect("/show")  