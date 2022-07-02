


seed = 1.0


function rand(n)
	 seed = (seed * 23 + 133 ) % n
	return seed
end

function rand2(n)
	return rand(n) - n/2.0
end

i= 0
while i < 100 do
    i = i + 1
    print( rand2(3.0))
end



