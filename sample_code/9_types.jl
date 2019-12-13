# Composite Types
println("Composite Types:")
println("~~~~~~~~~~~~~~~~")
# structs cannot be modified redefined
struct XYpoint
    x::Float64
    y::Float64
end

p1 = XYpoint(1.0, 2)
println("p1 = XYpoint(1.0, 2): ", p1)
println("p1.x = ", p1.x)
println("p1.y = ", p1.y)
println("typeof(p1): ", typeof(p1))

try
    p1.x=2.0
catch e
    println("Cannot modify struct")
end

# mutable structs can be modified but not redefined
mutable struct XYZpoint
    x::Float64
    y::Float64
    z::Float64
end

p2 = XYZpoint(1.0, 2, 3)
println("p2 = XYZpoint(1.0, 2, 3): ", p2)
println("p2.x = ", p2.x)
println("p2.y = ", p2.y)
println("p2.z = ", p2.z)
println("typeof(p2): ", typeof(p2))

p2.x = 7.0
println("p2.x = 7.0")
println("p2 = ", p2)

# Parametric Composite Types
println("Parametric Composite Types:")
println("~~~~~~~~~~~~~~~~~~~~~~~~~~~")

struct Point{T}
    x::T
    y::T
end

p3 = Point{Float64}(1,2)
p4 = Point{Int32}(1,2)
println("p3: ", p3)
println("p4: ", p4)
println("typeof(p3): ", typeof(p3))
println("typeof(p4): ", typeof(p4))
