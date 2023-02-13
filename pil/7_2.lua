-- 7.2 – The Semantics of the Generic for


t = {10,20,30,40}
for k,v in pairs(t) do
	 print(k,v)
end


for line in io.lines() do
	 io.write(line, '\n')
end



-- Generic 

--     for var_1, ..., var_n in explist do block end

-- is equivalent to the following code:

--     do
--       local _f, _s, _var = explist
--       while true do
--         local var_1, ... , var_n = _f(_s, _var)
--         _var = var_1
--         if _var == nil then break end
--         block
--       end
--     end

function step(s, var)
	 if var < s then
			return var + 1,var+2
	 end
end


for v,v2 in step,50,0 do
	 print(v,v2)
end
