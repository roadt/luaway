--- semicolon may optionally follow any statement. but this is just a convention. Line breaks  and semicolon play no role in Lua's syntax
a = 1
b = a*2
a = 1 ; b = a*2
a = 1 b = a*2  --- ugly, but valid


---     prompt> lua -la -lb
---     prompt> lua -i -la -lb

dofile("book/pil/1_1_lib1.lua")   -- load your library
n = norm(3.4, 1.0)
print(twice(n))             -->   7.0880180586677



