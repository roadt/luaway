


dofile('lib/p.lua')
local pt = print_table
local p = print

p(_VERSION)
p(_G)

--assert (v [, message])
---assert(true == false)
--error (message [, level])
---error("error!")

--collectgarbage ([opt [, arg]])
collectgarbage()
function f(s) print(s) end
p(getmetatable(f))

--ipairs (t) 
--- Returns three values (an iterator function, the table t, and 0)     so that the construction  for i,v in ipairs(t) do body end
p('ipairs:', ipairs(_G))
--pairs (t)
---If t has a metamethod __pairs, calls it with t as argument and returns the first three results from the call.
---Otherwise, returns three values: the next function, the table t, and nil, so that the construction     for k,v in pairs(t) do body end
p('pairs:', pairs(_G))

--load (chunk [, chunkname [, mode [, env]]])
p_s = load('print("s")');p_s()

--loadfile ([filename [, mode [, env]]])
p('loadfile:',loadfile("lib/p.lua"))

--next (table [, index])
p('next:',next(_G))

--pcall (f [, arg1, ···])
p('pcall:',pcall(print, 'a', 'b'))

--print (···)
print("print(...)")


-- rawequal
-- rawget
-- rawlen
-- rawset

-- require
-- select
-- setmetatable

-- tonumber
-- tostring

-- type
-- xpcall
