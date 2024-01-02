def add (a,b):
    c=a+b
    return c

def sub (a,b):
    c=a-b
    return c

def mul(a,b):
    c= a*b
    return c

def div(a,b):
    c=a/b
    return c

def mm(a,b):
    c=b*b+a
    return c

def ss(a,b,c):
    min = 99*99999999
   
    if b<min:
        min=b
    if c<min:
        min=c
    if a<min:
        min=a
    
    return min