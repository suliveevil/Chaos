---
title: "Apple终端"
author: 
categories: 
date: 2022-10-13 15:28:00 +0800
tags: 
excerpt: 
---


Apple Terminal：[[macOS]] [[终端]] App



系统驻留程序

```shell
# https://www.zhihu.com/question/419188932/answer/1567840975
launchctl list | grep -v apple
```




## 快捷键

[Mac 上“终端”中的键盘快捷键 - 官方 Apple 支持](https://support.apple.com/zh-cn/guide/terminal/trmlshtcts/2.12/mac/11.0)

## 命令行工具



```shell
ompgen -c # will list all the commands you could run.
compgen -a # will list all the aliases you could run.
compgen -b # will list all the built-ins you could run.
compgen -k # will list all the keywords you could run.
compgen -A function # will list all the functions you could run.
compgen -A function -abck # will list all the above in one go.
ls "${(@)path}"(N) # 各bin文件夹下的命令
printf "%s\n" "${(@)path}"/*(-*N)
printf "%s\n" "${(@)path}"/*(-*N) | xargs -L 1 basename | sort -u
printf '%s\n' ${PATH//:/\/* } | xargs -n 1 basename > commands.txt
```

系统命令行工具所在位置

```shell
/bin
/sbin
/usr/bin
/usr/sbin
/Library/Apple/usr/bin/rvictl
```

其他命令行工具所在位置

```shell
/opt/homebrew/bin
/opt/homebrew/sbin
/usr/local/bin
```


## 竞品

[[Alacritty]]

[kingToolbox/WindTerm](https://github.com/kingToolbox/WindTerm): A professional cross-platform SSH/Sftp/Shell/Telnet/Serial terminal.

[Eugeny/tabby](https://github.com/eugeny/tabby): A terminal for a more modern age

[[iTerm2]]


## Misc

[[管道]]

[[shell]]

[在 Mac 上使用 AppleScript 和“终端”自动执行任务 - Apple 支持](https://support.apple.com/zh-cn/guide/terminal/trml1003/mac)

[[访达]]

[AppleScript: The Language of Automation](http://www.macosxautomation.com/applescript/index.html)

[简单几条命令，轻松开启 macOS 系统隐藏功能](https://zhuanlan.zhihu.com/p/30985542)

[An A-Z Index of the Apple macOS command line - SS64](https://ss64.com/osx/)

```text

# An A-Z Index of the Apple macOS command line (macOS bash)

本文编辑于2019年10月8日 macOS Catalina 上线之前。

!!	Run the last command again
afconvert	Audio File Convert
afinfo	Audio File Info
afplay	Audio File Play
airport	Manage Apple AirPort
alias	Create an alias •
alloc	List used and free memory
apropos	Search the whatis database for strings
asr	Apple Software Restore
atsutil	Font registration system utility
automator	Run an Automator workflow
awk	Find and Replace text within file(s)
basename	Convert a full pathname to just a filename
bash	Bourne-Again SHell
bc	Arbitrary precision calculator language
bg	Send to background •
bind	Set or display readline key and function bindings •
bless	Set volume bootability and startup disk options
break	Exit from a For, While, Until or Select loop •
builtin	Execute a shell builtin •
bzip2	Compress or decompress files
caffeinate	Prevent the system from sleeping
cal	Display a calendar
calendar	Reminder Service
caller	Return the context of a subroutine call •
cancel	Cancel print jobs
case	Conditionally perform a command •
cat	Concatenate and print (display) the content of files
cd	Change Directory •
chflags	Change a file or folder's flags
chgrp	Change group ownership
chmod	Change access permissions
chown	Change file owner and group
chroot	Run a command with a different root directory
cksum	Print CRC checksum and byte counts
clear	Clear terminal screen
cmp	Compare two files
codesign	Create and manipulate code signatures
comm	Compare two sorted files line by line
command	Run a command (not a function) •
complete	Edit a command completion [word/pattern/list] •
continue	Resume the next iteration of a loop •
cp	Copy one or more files to another location
cpio	Copy files to and from archives
createhomedir	Create and populate home directories on the local computer
cron	Daemon to execute scheduled commands
crontab	Schedule a command to run at a later date/time
csplit	Split a file into context-determined pieces
csrutil	Configure System Integrity Protection (SIP)
cupsfilter	Convert a file to another format using cups filters
curl	Transfer data from or to a server
cut	Divide a file into several parts
date	Display or change the date & time
dc	Desk Calculator
dd	Data Duplicator - convert and copy a file, clone disks
declare	Declare variable & set attributes •
defaults	Set preferences, show hidden files
df	Display free disk space
diff	Display the differences between two files
diff3	Show differences among three files
dig	DNS lookup
dirname	Convert a full pathname to just a path
dirs	Display list of remembered directories •
diskutil	Disk utilities - Format, Verify, Repair
disown	Unbind a job from the current login session •
ditto	Copy files and folders
dot_clean	Remove dot-underscore files
drutil	Interact with CD/DVD burners
dscacheutil	Query or flush the Directory Service/DNS cache
dscl	Directory Service command line utility
dseditgroup	Edit, create, manipulate, or delete groups
dsenableroot	Enable root access
dsmemberutil	View user and groups rights
du	Estimate file space usage
echo	Display text on screen •
ed	A line-oriented text editor (edlin)
enable	Enable and disable builtin shell commands •
env	List or Set environment variables
eval	Evaluate several commands/arguments •
exec	Execute a command •
execsnoop	Snoop new process execution
exit	Exit the shell •
expand	Convert tabs to spaces
expect	Programmed dialogue with interactive programs Also see AppleScript
export	Set an environment variable •
expr	Evaluate expressions
false	Do nothing, unsuccessfully
fc	Fix command (history)
fdesetup	FileVault configuration, list FileVault users
fdisk	Partition table manipulator for Darwin UFS/HFS/DOS
fg	Send job to foreground •
file	Determine file type
find	Search for files that meet a desired criteria
fmt	Reformat paragraph text
fold	Wrap text to fit a specified width
for	Loop command •
fs_usage	Filesystem usage (process/pathname)
fsck	Filesystem consistency check and repair
ftp	Internet file transfer program
function	Define Function Macros
fuser	List processes that have one or more files open
GetFileInfo	Get attributes of HFS+ files
getopt	Parse positional parameters
getopts	Parse positional parameters •
goto	Jump to label and continue execution
grep	Search file(s) for lines that match a given pattern
groups	Print group names a user is in
gzip	Compress or decompress files
halt	Stop and restart the operating system
hash	Refresh the cached/remembered location of commands •
hdiutil	Manipulate iso disk images
head	Display the first lines of a file
history	Command History •
hostname	Print or set system name
iconv	Convert the character set of a file
id	Print user and group names/id's
if	Conditionally perform a command •
ifconfig	Configure network interface parameters
info	Help info
install	Copy files and set attributes
installer	System software and .pkg package installer tool
iosnoop	Snoop I/O events as they occur
iostat	Report CPU and i/o statistics
ipconfig	View and control IP configuration state
jobs	List active jobs •
join	Join lines on a common field
kextfind	List kernel extensions
kextstat	Display status of loaded kernel extensions (kexts)
kextunload	Terminate driver instances and unload kernel extensions.
keytool	Key and certificate management tool
kickstart	Configure Apple Remote Desktop
kill	Kill a process by specifying its PID
killall	Kill processes by name
l	List files in long format (ls -l)
last	Indicate last logins of users and ttys
launchctl	Load or unload daemons/agents
leave	Remind you when you have to leave
less	Display output one screen at a time
let	Evaluate expression •
lipo	Convert a universal binary
ll	List files in long format, showing invisible files (ls -la)
ln	Make links between files (hard links, symbolic links)
local	Set a local (function) variable •
locate	Find files
login	log into the computer
logname	Print current login name
logout	Exit a login shell (bye) •
look	Display lines beginning with a given string
lp	Print files
lpr	Print files
lprm	Remove jobs from the print queue
lpstat	Printer status information
ls	List information about file(s)
lsbom	List a bill of materials file
lsof	List open files
lsregister	Reset the Launch Services database
man	Help manual
md5	Calculate a checksum for a file
mdfind	Spotlight search
mdls	List the metadata attributes for a specified file
mdutil	Manage Spotlight metadata store
mkdir	Create new folder(s)
mkfifo	Make FIFOs (named pipes)
mkfile	Make a file
mktemp	Make a temporary file
more	Display output one screen at a time
mount	Mount a file system
msgs	System messages
mtree	Map a directory hierarchy
mv	Move or rename files or directories
nano	Simple text editor
nc/netcat	Read and write data across networks
net	Manage network resources
netstat	Show network status
networksetup	Network and System Preferences
nice	Set the priority of a command
nl	Number lines and write files
nohup	Run a command immune to hangups
ntfs.util	NTFS file system utility
nvram	Manipulate firmware variables
onintr	Control the action of a shell interrupt
open	Open a file/folder/URL/Application
opensnoop	Snoop file opens as they occur
openssl	OpenSSL command line
osacompile	Compile Applescript
osascript	Execute AppleScript
passwd	Modify a user password
paste	Merge lines of files
pbcopy	Copy data to the clipboard
pbpaste	Paste data from the Clipboard
pbs	General helper tool
pdisk	Apple partition table editor
pgrep	List processes by a full or partial name
ping	Test a network connection
pkgbuild	Build a macOS Installer component package
pkgutil	Query and manipulate installed packages
pkill	Kill processes by a full or partial name
plutil	Property list utility
pmset	Power Management settings
popd	Restore the previous value of the current directory •
pr	Convert text files for printing
printenv	List environment variables
printf	Format and print data •
ps	Process status
pushd	Save and then change the current directory
pwd	Print Working Directory •
qlmanage	Quick Look Server debug and management tool
quota	Display disk usage and limits
rcp	Copy files between machines
read	Read one line from standard input •
readonly	Mark a variable or function as read-only •
reboot	Stop and restart the system
ReportCrash	Enable/Disable crash reporting
return	Exit a function •
rev	Reverse lines of a file
rm	Remove files
rmdir	Remove folder(s)
rpm	Remote Package Manager
rsync	Remote file copy - Sync file tree
say	Convert text to audible speech
screen	Multiplex terminal, run remote shells via ssh
screencapture	Capture screen image to file or disk
scselect	Switch between network locations
scutil	Manage system configuration parameters
sdiff	Merge two files interactively
security	Administer Keychains, keys, certificates and the Security framework
sed	Stream Editor
select	Generate a list of items •
seq	Print numeric sequences
serverinfo	Server information
set	Set a shell variable = value •
setfile	Set attributes of HFS+ files
sharing	Create share points for afp, ftp and smb services
shasum	Print or Check SHA Checksums
shift	Shift positional parameters •
shopt	Set shell options •
shortcuts	Manage macOS shortcuts
shutdown	Shutdown or restart macOS
sips	Scriptable image processing system
sleep	Delay for a specified time
softwareupdate	System software update tool
sort	Sort text files
source	Execute commands from a file •
spctl	Security assessment policy/Gatekeeper
split	Split a file into fixed-size pieces
sqlite3	SQL database (download history)
srm	Securely remove files or directories
stat	Display the status of a file
stop	Stop a job or process
su	Substitute user identity
sudo	Execute a command as another user
sum	Print a checksum for a file
suspend	Suspend execution of this shell •
sw_vers	Print macOS operating system version
sysctl	Get or set kernel state
system_profiler	Report system configuration
systemsetup	Computer and display system settings
tab2space	Expand tabs and ensure consistent cr/lf line endings
tail	Output the last part of files
tar	Tape ARchiver
tccutil	Manage the privacy database
tcpdump	Dump traffic on a network
tee	Redirect output to multiple files
test	Condition evaluation •
textutil	Manipulate text files in various formats (Doc,html,rtf)
time	Measure Program Resource Use
times	Print shell & shell process times •
tmutil	Time Machine utility
top	Display process information
touch	Change file timestamps
tput	Set terminal-dependent capabilities, color, position
tr	Translate, squeeze, and/or delete characters
traceroute	Trace Route to Host
traceroute6	Trace IPv6 Route to Host
trap	Execute a command when the shell receives a signal •
trimforce	Enable TRIM commands on third-party drives
true	Do nothing, successfully
tty	Print filename of terminal on stdin
type	Describe a command •
ufs.util	Mount/unmount UFS file system
ulimit	limit the use of system-wide resources •
umask	Users file creation mask
umount	Unmount a device
unalias	Remove an alias •
uname	Print the Darwin OS Kernel version / release / machine name
unexpand	Convert spaces to tabs
uniq	Uniquify files
units	Convert units from one scale to another
unset	Remove variable or function names •
until	Execute commands (until error)
until	Loop command •
uptime	Show how long system has been running
users	Print login names of users currently logged in
uucp	Unix to Unix copy
uudecode	Decode a file created by uuencode
uuencode	Encode a binary file
uuidgen	Generate a Unique ID (UUID/GUID)
vi	Text Editor
w	Show who is logged on and what they are doing
wait	Wait for a process to complete •
wait4path	Wait for given path to show up in the namespace
wall	Write a message to users
wc	Print byte, word, and line counts
whatis	Search the whatis database for complete words
whereis	Locate a program
which	Locate a program file in the user's path
while	Loop command •
who	Print all usernames currently logged on
whoami	Print the current user id and name ('id -un')
write	Send a message to another user
xargs	Execute utility - passing arguments
xattr	Display and manipulate extended attributes
xcode-select	--install = Install the command line developer tools
xxd	Make a hexdump or do the reverse
yes	Print a string until interrupted
zip	Package and compress (archive) files.

```




