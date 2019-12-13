### Arrays and array operations
println("Arrays:")
println("~~~~~~~")
a1 = [1, 2, 3.0]
println("a1 = ", a1)
r1 = a1 .^ 2
println("r1 = a1 .^2 = ", r1)

a2 = [3, 4, 5]
println("a2 = ", a2)

println("a1 + a2 = ", a1+a2)
println("a1 .* a2 = ", a1 .* a2)
println("a1 .^* a2 = ", a1 .^ a2)


### Matrices
println("Matrices:")
println("~~~~~~~~~")
z = zeros(Float32, 5,4,3)
println("z = zeros(Float32, 5,4,3): ", z)
o = ones(Int16, 2,2)
println("o = ones(Int16, 2,2): ", o )
t = trues(3,2,2)
println("t = trues(3,2,2): ", t )
f = falses(3,2,2)
println("f = falses(3,2,2): ", f )
co = copy(o)
println("co = copy(o): ", co )
dco = deepcopy(o)
println("dco = deepcopy(o): ", dco )
co[1,1] = -2
println("co[1,1,1] = -2: ", co)
dco[1,1] = -3
println("dco[1,1,1] = -3: ", dco)
println("o: ", o)

r1 = rand(Float64, 2,3)
println("r1 = rand(Float64, 2,3) ", r1)
println("eltype(r1): ", eltype(r1))
println("length(r1): ", length(r1))
println("ndims(r1): ", ndims(r1))
println("size(r1): ", size(r1))
println("size(r1,2): ", size(r1,2))

println("size([1 2 3]): ", size([1 2 3]))
println("size([1, 2, 3]): ", size([1, 2, 3]))
println("size([[1 2] [3 4]]): ", size([[1 2] [3 4]]))
println("size([[1, 2] [3, 4]]): ", size([[1, 2] [3, 4]]))
println("size([[1 2], [3 4]]): ", size([[1 2], [3 4]]))

m1 = [[1,2] [3,4]]
println("m1 = [[1,2] [3,4]]: ", m1)

m2 = [[5,6] [7,8]]
println("m2 = [[5,6] [7,8]]: ", m2)

println("[m1 m2]: ", [m1 m2])
println("hcat(m1, m2): ", hcat(m1, m2))
println("[m1; m2]: ", [m1; m2])
println("vcat(m1, m2): ", vcat(m1, m2))
println("cat(m1, m2; dims=1): ", cat(m1, m2; dims=1))

k = [m1, m2]
println("k =[m1, m2]: ", k)
println("size(k): ", size(k))
println("k[1]: ", k[1])
