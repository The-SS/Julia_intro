println("Tasks:")
println("~~~~~~")
# producer: a function that will push data to the channel
function producer(c::Channel) # c: a channel (fist-in-first-out queue) where data is pushed to and can be taken from
    put!(c, "start") # put data in the channel
    for n = 1:500000
        put!(c, n)
    end
    put!(c, "stop") # put data in the channel
end

channel1 = Channel(producer)

input = ""
while input != "stop"
    global input = take!(channel1)
    println(input)
end
