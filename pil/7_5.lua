-- 7.5 – True Iterators

function allwords(f)
	 for l in io.lines() do
			for w in string.gmatch(l, '%w+') do
				 f(w)
			end
	 end
end

allwords(print)



---
local count = 0
allwords(function (w)
			if w == 'hello' then count = count  + 1 end
end)
print(count)


