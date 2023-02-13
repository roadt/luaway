-- 7.4 – Iterators with Complex State


local iterator 

function allwords() 
	 local state  = {line = io.read(), pos = 1}
	 return iterator, state
end

function iterator(state)
			while state.line do
				 local s,e = string.find(state.line, "%w+", state.pos)
				 if s then 
						state.pos = e+1
						return string.sub(state.line, s, e)
				 else
						state.line = io.read()
						state.pos = 1
				 end
			end
			return nil
end

for line in allwords() do
	 print(line)
end



local count = 0
for w in allwords() do
			if w == 'hello' then count = count  + 1 end
end
print(count)
