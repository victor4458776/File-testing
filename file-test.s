#Mapping the internal state of the file + static analysis
mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7da4a5c20000
mmap(NULL, 177672, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7da4a5bf4000
mmap(0x7da4a5bfb000, 102400, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x7000) = 0x7da4a5bfb000
mmap(0x7da4a5c14000, 32768, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x20000) = 0x7da4a5c14000
mmap(0x7da4a5c1c000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x27000) = 0x7da4a5c1c000
mmap(0x7da4a5c1e000, 5640, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x7da4a5c1e000
#this is the libdl binary directory and is readonly
#function readonly works
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libdl.so.2", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\2\1\1\0\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0000\21\0\0\0\0\0\0"..., 832) = 832

#Mapping bytes
mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7da4a595e000
statfs("/selinux", 0x7fff18278280)      = -1 ENOENT (No such file or directory)
#file line 3 dev-env 1024 bytes
read(3, "/dev/vdb / btrfs rw,relatime,idm"..., 1024) = 1024
fstat(1, {st_mode=S_IFCHR|0620, st_rdev=makedev(0x88, 0x1), ...}) = 0
#file type
fstat(1, {st_mode=S_IFCHR|0620, st_rdev=makedev(0x88, 0x1), ...}) = 0
fstat(1, {st_mode=S_IFCHR|0620, st_rdev=makedev(0x88, 0x1), ...}) = 0
#Here is where a good test takes place, github actions and deploy codes is similar to this configuration
write(1, "data   lib\tREADME.md\tsqlmap.conf"..., 45data   lib     README.md       sqlmap.conf  thirdparty
) = 45
write(1, "extra  plugins\tsqlmapapi.yaml\tta"..., 37extra  plugins sqlmapapi.yaml  tamper
) = 37
#positional argumant to close the group permissions, each file has a given number of bytes to decode in base64
exit_group(0)                           = ?
