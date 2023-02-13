-- 7.3 – Stateless Iterators


-- ipairs
a = {'one', 'two', 'there'}
for i,v in ipairs(a) do
	 print(i,v)
end


function iter(a, i)
	 i = i  + 1
	 local v = a[i]
	 if v then 
			return i,v
	 end
end

for i,v in iter, a, 0 do
	 print(i,v)
end

function tt_ipairs(a)
	 return iter, a, 0
end

for i,v in tt_ipairs(a) do
	 print(i,v)
end


-- pairs

    -- function pairs (t)
    --   return next, t, nil
    -- end

for k ,v in next, a do
	 print(k,v)
end
