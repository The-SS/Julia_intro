### println: prints a line
println("Println:")
println("~~~~~~~~")
println("Hello World")
println("Concatinate with " * "*")
println("You can also do this:", "repeat (^) "^2)


### basic variable
println("Basic variables:")
println("~~~~~~~~~~~~~~~~")
x1 = 10
println(x1, " is: ", typeof(x1))
x2 = -10.0
println(x2, " is: ", typeof(x2))

s1 = "This is a string"
println(s1, " is: ", typeof(s1))
s2 = 'p'
println(s2, " is: ", typeof(s2))
s3 = 'γ'
println(s3, " is: ", typeof(s3))
s4 = "You can also use unicode characters: γ, β, Δ ..." * " just by typing \\ and the character name (e.g.: gamma) then tab for completion"
println(s4)

b1 = true
b2 = false
println(b1, " ", b2, " ", typeof(b1), " ", typeof(b2))

### style conventions
println("Style conventions:")
println("~~~~~~~~~~~~~~~~~~")
println("\n")
println("Variables: lowercase with _ if needed")
println("Type and Module names: start with capital letter and use camelCase if needed")
println("Functions and macros: lower case without underscores")
println("Functions that mutate their inputs end with !")
