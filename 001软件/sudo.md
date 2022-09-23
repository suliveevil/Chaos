


## Fix macOS sudo error: unable to initialize PAM: No such file or directory

[bulletinmybeard - Medium](https://bulletinmybeard.medium.com/)

I made a stupid mistake this morning by leaving a typo in the pluggable authentication modules file. Restarting the shell then revealed errors my typo caused. The solution was luckily not far away.


I accidentally ended up with the typo `∑∑wpam_tid.so` instead of `pam_tid.so`in `/etc/pam.d/sudo`. The correct and new line (`auth sufficient pam_tid.so`) will trigger the Touch ID fingerprint prompt whenever `sudo` is being executed in the Terminal. This comes in handy if you work a lot with temporary sudo sessions.

This is how the `/etc/pam.d/sudo` file should look like:

### sudo: auth account password session  
**auth       sufficient     pam_tid.so**  
auth       sufficient     pam_smartcard.so  
auth       required       pam_opendirectory.so  
account    required       pam_permit.so  
password   required       pam_deny.so  
session    required       pam_permit.so

After restarting the shell with `exec $SHELL` I executed a command that requires `sudo` and I got to see the error `sudo error: unable to initialize PAM: No such file or directory`. I checked the `/etc/pam.d/sudo` file and noticed the typo. I also noticed that macOS, apparently, revoked the write permissions for all users for this file and after the file content was updated once.

Luckily, there's a relatively simple fix for the problem by running macOS in **single-user mode** (Terminal only, no UI) or the **Recovery Mode** and editing the `/etc/pam.d/sudo` file via Terminal.

### Boot into Single-User-Mode

If you have an older Mac, you can boot into **single-user mode** and directly into the command line mode of macOS by skipping the UI and everything:

-   Start the Mac and press and hold down `COMMAND + S` keys until you see commands being executed in the Terminal.
-   Continue with **Terminal and restart****.**

### Boot into Recovery Mode

On modern **Macs**, there's no **single-user mode** available, so you have to do the following.

-   Boot into recovery mode by pressing and holding the power button on your Mac until you see **Loading startup options**.
-   Click **Options**, then **Continue**.
-   If you're asked for your administrator account password, enter it, and if everything goes well, you will land on the **macOS Utilities** screen.
-   Go to **Disk Utility** and check if the **Macintosh — Data** partition was mounted; otherwise, mount the data partition by selecting the **Macintosh — Data** partition on the left and clicking the **mount** button on the top right corner. (The partition name can differ with your Mac setup!).
-   Close **Disk Utility** and get back to **macOS Utilities.**
-   Access the Terminal via the menu from the top of the screen.
-   Continue with **Terminal and restart****.**

**Terminal and restart**

-   Try opening the file with `vi /Volumes/Macintosh\ — Data/etc/pam.d/sudo` (The partition/volume name can differ with your Mac setup!). If the file was not found, run `ls -al /Volumes` to see what volumes are available and which one is the data volume you need.
-   If you have the file open in vim, fix what's wrong with it or revert your changes. Save and close the file by switching from `INSERT` to the `COMMAND`mode with the `ESC` key, type `:wq!`, and hit `enter`.
-   Close the Terminal via the menu from the top of the screen or by pressing `COMMAND + Q`.
-   Restart the Mac.
-   Back into the UI, open the Terminal, and verify the fix with `cat /etc/pam.d/sudo`. If everything looks good, give it a try by executing: `sudo whoami`.

Cheers \w



