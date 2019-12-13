# compound expressions
println("Compound expressions:")
println("~~~~~~~~~~~~~~~~~~~~~")
z1 = begin
    x = 1
    y = 2
    x+y
end
println("z1 = ", z1)

z2 = (x=1; y=2; x+y)
println("z2 = ", z2)

z3 = begin
    x = 1
    y = 2
    x+y
    x+=10
end
println("z3 = ", z3)

# While
println("While Loops:")
println("~~~~~~~~~~~~")
i = 1
while i < 10
    println(i)
    global i+=1
end

# for
println("For Loops:")
println("~~~~~~~~~~")
println("using start:step:end")
for i = 1:2:10
    println(i)
end

println("Iterating through array")
l = [1,5,10]
println("l = ", l)
for i in l
    println(i)
end

println("Iterating through array 2")
l2 = [l,l.^2]
println("l2 = ", l2)
for i in l2
    println(i)
end

println("Iterating through array 3")
l3 = ['a', 'b', 'c']
println("l3 = ", l3)
for i ∈ l3
    println(i)
end


# If-elseif-else
println("if-elseif-else:")
println("~~~~~~~~~~~~~~~")
x = [1,2,3]
for i in x
    if i < 2
        println(i, "<2")
    elseif i == 2
        println(i, "=2")
    else
        println(i, ">2")
    end
end

# try-catch
println("Try-catch:")
println("~~~~~~~~~~")
i = 1
try
    while i < 10
        println(i)
        i+=1 # needs to be global
    end
catch e
    println("i is not defined")
    println(e)
end

# Tasks will be presented later
