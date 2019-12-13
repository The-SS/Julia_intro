path = pwd()

function pf(x)
    print(x)
end

println("including functions for a file")
include("6_function_definitions_and_methods.jl")

println("Using plf function with 1 method")
plf
plf("printing a line")

println("Using pf function with 1 method")
pf
pf("printing a line")

pf("\n\n")

println("Using comparison_test function with 2 methods")
comparison_test
println("Method 1 for Int64")
comparison_test(Int64(1), Int64(2))
println("Method 2 for Float64")
comparison_test(Float64(2), Float64(1))
