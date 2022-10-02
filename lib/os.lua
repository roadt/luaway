local p = print

p(os.clock())
p(os.date())
p(os.difftime(0, 100))
p(os.execute("pwd"))
--p(os.exit(1))
p(os.getenv("PATH"))
p(os.remove("/tmp/a"))
p(os.rename(os.tmpname(), "/tmp/b"))
p(os.setlocale("zh_CN"))
p(os.time())
p(os.tmpname())
