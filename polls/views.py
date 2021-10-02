from django.shortcuts import render, redirect  
from polls.forms import ExerciseForm  
from polls.models import Exercise  


def exc(request):  
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
    exercise = Exercise.objects.all()  
    return render(request,"show.html",{'exercise':exercise})  
def edit(request, id):  
    exercise = Exercise.objects.get(id=id)  
    return render(request,'edit.html', {'exercise':exercise})  
def update(request, id):  
    exercise = Exercise.objects.get(id=id)  
    form = ExerciseForm(request.POST, instance = exercise)  
    if form.is_valid():  
        form.save()  
        return redirect("/show")  
    return render(request, 'edit.html', {'exercise': exercise})  
def destroy(request, id):  
    exercise = Exercise.objects.get(id=id)  
    exercise.delete()  
    return redirect("/show")  