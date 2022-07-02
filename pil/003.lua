-- 1.1 Chunk
-- a chunk is a sequence of statements
-- semicolon is convention to break statemetns. not lua syntax.

a = 1
b = a*2

a = 1;
b = a*2;

a = 1 ; b = a * 2
a = 1   b = a*2  -- ugly, but valid.


--  lua interpreter 
-- lua -la -lb
-- lua -i -la -lb

-- dofile
dofile("001.lua")

-- dofile
dofile("003a.lua")   -- load a library
n = norm(3.4, 1.0)
print(twice(n))


