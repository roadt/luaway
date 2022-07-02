
-- 1.2  GLobal Variables

-- global variable do not need declarations, simply assign a value .
-- It's not an error to access a non-initialized variable.
print(b)   -- > nil
b = 10
print(b)  -- > 10

-- you can delete a global variable, just assign nil to it. though most case you can use local variable for short life variable.

b = nil
print (b)   --> nil




-- 1.3 - Some Lexical Conventions

-- Identifiers in Lua can be any string of letters, digits, and underscores, not beginning with a digit;
-- avoid identifiers starting with an underscore followed by one or more uppercase letters (e.g., _VERSION); they are reserved for special uses in Lua. 

-- block comment

--[[
print(10)                   -- no action (comment)
--]]

---[[
print(10)
--]]
