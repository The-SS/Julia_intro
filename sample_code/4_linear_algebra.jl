using LinearAlgebra

println("Linear Algebra:")
println("~~~~~~~~~~~~~~~")

println("using LinearAlgebra")
println()

id1 = I(3)
println("id1 = I(3) = ", id1)
id2 = Matrix{Float16}(I,2,2)
println("id2 = Matrix{Float16}(I,2,2) = ", id2)
M = Matrix{Float16}(I,2,3)
println("M = Matrix{Float16}(I,2,3) = ", M)

d1 = Diagonal([1,2,4])
println("d1 = Diagonal([1,2,4]) = ", d1)
d2 = Diagonal([1;2;4])
println("d2 = Diagonal([1;2;4]) = ", d2)

println("eigvals(d1) = ", eigvals(d1))
println("eigvecs(d1) = ", eigvecs(d1))
println("inv(d1) = ", inv(d1))
println("d1*d2 = ", d1*d2)
println("dot(d1,d2) = ", dot(d1,d2))
