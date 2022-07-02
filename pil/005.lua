
-- lua -e "print(math.sin(12))" -->-0.53657291800043
-- lua -i -l a.lua -e "x = 10"
-- lua -i -e "_PROMPT=' lua>'"
-- LUA_INIT   code,           @filename  - lua file


print(arg)


-- 2 - Types and Values

-- lua is dynmaically typed language. no type definition in the language; each value carries its own type.
-- 8 basic types: nil, boolean, number, string, userdata, function, thread, table.

print(type(nil))
print(type(true))
print(type(10.4*3))
print(type("Hello world"))
print(type(print))
print(type(type))
print(type(type(X)))


--

print(type(a)) --> nil
a = 10
print(type(a)) --> number
a = "a string!!"
print(type(a))  --> string
a = print
a(type(a))   --> function



-- 2.1 - Nil   type: nil   value: nil
-- 2.2 - Boolean  type:boolean  value: true, false.        
--         false, nill are considered to false. other are true.
-- 2.3 - Numbers
--     4     0.4     4.57e-3     0.3e12     5e+20

-- 2.4 - Strings

a = "one string"
b = string.gsub(a, "one", "another")  -- change string parts
print(a)  --> one string
print(b)  --> another string

a = "a line"
b = 'another line'


escape_sequence="\a\b\f\n\r\t\v\\\"\'\[\]"
--print(escape_sequence)


print("one line\nnext line\n\"in quotes\", 'in quotes'")
print('a backslash inside quotes: \'\\\'')
print("a simpler way: '\\'")


-- opening long bracket of level n 
--  level0  [[ ]] ,  level1 [=[]=], level2 [==[]==]
 
page = [[
<HTML>
<HEAD>
<TITLE>An HTML Page</TITLE>
</HEAD>
<BODY>
<A HREF="http://www.lua.org">Lua</A>
	 [=[ a text between double brackets]=]
</BODY>
</HTML>
   ]]

print(page)

-- Lua provides automatic conversions between numbers and strings at the run time.

print("10" + 1)              -->11
print("10 + 1")              --> 10 + 1
print("-5.3e-10"*"2")      --> -1.06e-09
-- print("hello" + 1)           -- ERROR (can not convert "hello")


-- Lua applies such coercions not only in arithmetic operators, but also in other places that expect a number. Conversely, whenever it finds a number where it expects a string, Lua converts the number to a string:

print(10 .. 20)        --> 1020


-- Despite those automatic conversions, strings and numbers are different things. A comparison like 10 == "10" is always false

line = io.read()                  -- read a line
n = tonumber(line)             -- try to convert it to a number
if n == nil then
   error(line .. "  is not a valid number")
else
   print (n*2)
end

print(tostring(10) == "10")           --> true
print(10 .. "" == "10")                 --> true