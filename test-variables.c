#testing variables
#Also we can performance some cryptography test with bash and ssh keys
execve("/usr/bin/ls", ["ls", "./test.txt"], 0x7ffec48914d8 /* 39 vars */) = 0
brk(NULL)                               = 0x566e4ccca000
mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7915fc961000 
#Reading bytes
read(3, "\177ELF\2\1\1\0\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\200\"\0\0\0\0\0\0"..., 832) = 832
#Handler to restore .py file
rt_sigaction(SIGRTMIN, {sa_handler=0x7915fc6a7690, sa_mask=[], sa_flags=SA_RESTORER|SA_SIGINFO, sa_restorer=0x7915fc6b4140}, NULL, 8) = 0
#File status code
statx(AT_FDCWD, "./test.txt", AT_STATX_SYNC_AS_STAT|AT_SYMLINK_NOFOLLOW, STATX_MODE, {stx_mask=STATX_ALL|STATX_MNT_ID, stx_attributes=0, stx_mode=S_IFREG|0644, stx_size=4, ...}) = 0
fstat(1, {st_mode=S_IFCHR|0620, st_rdev=makedev(0x88, 0x1), ...}) = 0
#The next line check if the file is locked by permission sudo rules in hex
mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7915fc69f000
arch_prctl(ARCH_SET_FS, 0x7915fc6a0400) = 0
#Hexdump is another interesting tool in order to test files in Jira  
