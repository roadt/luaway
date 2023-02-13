
function list_iter(t)
	 local i = 0
	 local n = #t
	 return function() 
			i = i + 1
			if i <= n then return t[i] end
    end
end

t = { 10,20,30 }
iter = list_iter(t) -- creates the iterator

while true do
	 local e = iter()
	 if  e == nil then break end
	 print(e)
end

print('---')

for e in list_iter(t) do
	 print(e)
end


-- 
function allwords()
	 local line  = io.read() -- current line
	 local pos = 1 -- current position in the line
	 return function() -- iterator function
			while line do
				 local s,e = string.find(line, "%w+", pos)
				 if s then 
						pos = e+1
						return string.sub(line, s, e)
				 else
						line = io.read()
						pos = 1
				 end
			end
	 end
end	 


for word in allwords() do
	 print(word)
end
