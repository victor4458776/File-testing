#https://realpython.com/python-debugging-pdb
#SHELL1
(Pdb) ll
  6     def get_path(filename):
  7         """Return file's path or empty string if no path."""
  8         head, tail = os.path.split(filename)
  9         import pdb; pdb.set_trace()
 10  ->     return head
(Pdb) p filename
'./example2.py'
(Pdb) p head, tail
('.', 'example2.py')
(Pdb) p 'filename: ' + filename
'filename: ./example2.py'
(Pdb) p get_path
<function get_path at 0x100760e18>
(Pdb) p getattr(get_path, '__doc__')
$ ./example4.py 
> /code/example4.py(7)<module>()
-> filename_path = util.get_path(filename)
(Pdb) b util:5, not head.startswith('/')
Breakpoint 1 at /code/util.py:5
(Pdb) c
> /code/util.py(5)get_path()
-> return head
(Pdb) p head
'.'
(Pdb) a

#SHELL2
$ ./example3.py 
> /code/example3.py(14)<module>()
-> filename_path = get_path(filename)
(Pdb) n
> /code/example3.py(15)<module>()
-> print(f'path = {filename_path}')
$ ./example4.py 
> /code/example4.py(7)<module>()
-> filename_path = util.get_path(filename)
(Pdb) b util.get_path, not filename.startswith('/')
Breakpoint 1 at /code/util.py:1
(Pdb) c
> /code/util.py(3)get_path()
-> import os
(Pdb) a
filename = './example4.py'
(Pdb)   


#SHELL3  
$ ./example4unt.py 
> /code/example4unt.py(9)get_path()
-> head, tail = os.path.split(fname)
(Pdb) ll
  6     def get_path(fname):
  7         """Return file's path or empty string if no path."""
  8         import pdb; pdb.set_trace()
  9  ->     head, tail = os.path.split(fname)
 10         for char in tail:
 11             pass  # Check filename char
 12         return head

(Pdb) unt
> /code/example4unt.py(10)get_path()
-> for char in tail:
(Pdb) 
> /code/example4unt.py(11)get_path()
-> pass  # Check filename char
(Pdb) 
> /code/example4unt.py(12)get_path()
-> return head
(Pdb) p char, tail
('y', 'example4unt.py')

(Pdb) disable 1
Disabled breakpoint 1 at /code/util.py:1
(Pdb) b
Num Type         Disp Enb   Where
1   breakpoint   keep no    at /code/util.py:1
(Pdb) enable 1
Enabled breakpoint 1 at /code/util.py:1
(Pdb) b
Num Type         Disp Enb   Where
1   breakpoint   keep yes   at /code/util.py:1


