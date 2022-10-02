

require('p.lua')


-- helper funcs
local p = print
local pt = print_table

a = {1,2,3,4,5}
b = {a=1, b=2, c=3}

pt(a)
pt(b)

-- table.concat
p(table.concat(a))
p(table.concat(a, ','))
p(table.concat(a, ',', 2,4))

-- table.inset
table.insert(a,  9); pt(a)
table.insert(a, 1, 10); pt(a)

-- table.move (a1, f, e, t [,a2])
p('table.move')
pt(b); table.move(a,  2, 4, 10, b); pt(b)

-- table.remove (list [, pos])
p('table.remove')
table.remove(b, 1); pt(b)



-- table.pack(...), table.unpack (list [, i [, j]])
p('table.pack,table.unpack')
pt(table.pack('a','b','c'))
p(table.unpack(table.pack('a','b','c')))

--table.sort (list [, comp])
p('table.sort')
pt(a)
p(table.sort(a)); pt(a)
p(table.sort(a, function (l,r) ; return l > r;  end)); pt(a)
