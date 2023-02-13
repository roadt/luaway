
-- 2.5 - Tables

a = {}             -- create a table and store its reference in `a'
k = "x"
a[k] = 10            -- new entry, with key = "x" and value = 10
a[20] = "great"    -- new entry, with key=20 and value="great"
print(a["x"])        --> 10
k = 20
print(a[k])           --> "great"
a["x"] = a["x"] + 1           --> increments entry "x"
print(a["x"])         --> 11n


-- A table is always anonymous. There is no fixed relationship between a variable that holds a table and the table itself
a = {}
a["x"] = 10
b = a                   -- `b' refers to the same table as `a'
print(b["x"])          --> 10
b["x"] = 20
print(a["x"])             --> 20
a = nil                     -- now only `b' still refers to the table
b = nil                    -- now there are no references left to the table


-- Each table may store values with different types of indices and it grows as it needs to accommodate new entries: 

a = {}                -- emty table
-- create 1000 new entries
for i=1,1000 do a[i] = i *2 end
print(a[9])             --> 18
a["x"] = 10
print(a["x"])           --> 10
print(a["y"])            --> nil


-- Lua supports this representation by providing a.name as syntactic sugar for a["name"].

a.x = 30             -- same as a["x"] = 30
print(a.x)              -- same as print(a["x"])
print(a.y)             -- same as print(a["y"])


-- For Lua, the two forms are equivalent and can be intermixed freely; but for a human reader, each form may signal a different intention. A common mistake for beginners is to confuse a.x with a[x]
a = {}
x = "y"
a[x] = 10                 -- put 10 in field "y"
print(a[x])   --> 10      -- value of field "y"
print(a.x)    --> nil     -- value of field "x" (undefined)
print(a.y)    --> 10      -- value of field "y"


-- To represent a conventional array, you simply use a table with integer keys. There is no way to declare its size; you just initialize the elements you need: 

-- read 10 lnies storing them in a table
a = {}
for i=1,10 do
--   a[i] = io.read()
   a[i] = i*i
end


-- When you iterate over the elements of the array, the first non-initialized index will result in nil; you can use this value as a sentinel to represent the end of the array

--print the lines
for i,line in ipairs(a) do
   print(line)
end

-- When in doubt about the actual types of your indices, use an explicit conversion to be sure:

    i = 10; j = "10"; k = "+10"
    a = {}
    a[i] = "one value"
    a[j] = "another value"
    a[k] = "yet another value"
    print(a[j])            --> another value
    print(a[k])            --> yet another value
    print(a[tonumber(j)])  --> one value
    print(a[tonumber(k)])  --> one value
