println("plf single method function")
function plf(x)
    println(x)
end

println("comparison_test 2 method function")
function comparison_test(x::Int64,y::Int64)
    if x < y
       println(x, " is less than ", y)
   elseif x > y
       println(x, "is greater than ", y)
   else
       println(x, " is equal to ", y)
   end
end
function comparison_test(x::Float64,y::Float64)
    if x < y
       println(x, " is less than ", y)
   elseif x > y
       println(x, " is greater than ", y)
   else
       println(x, " is equal to ", y)
   end
end
