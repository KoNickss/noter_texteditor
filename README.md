# Note: this is a hello world program I made some years back to get familiar with qt and app publishing, only here cause I cant be bothered to delete it, pls ignore it

# Noter, a sane text editing program
This, above all, was me learning qt and making something I wished for: a simple and elegant KDE-friendly notepad, kwrite is imo kinda ugly and filled with useless options, the closest thing to notepad on linux was mousepad, but mousepad is the kind of package you don't let your kids around. Noter is supposed to emulate the feeling of the windows xp notepad, a simple place to jot down ideas in a hurry and maybe save them to a file, to keep in the spirit of keeping it as uncomplicated as possible, I added live save (changes commit automatically to the file) and args, and I plan to add more features in the future.
## Updates and multiplatform-ism
Multiplatform-ism is the best political ideology, you cannot change my mind. Because of this, the code you see above is compatible with linux, mac and windows (I will also publish already compiled installers for both macOS and Windows once I figure out how). This also raied a problem of it's own, how can I make a updating system to add features that work everywhere? I found out using the youtube-dl aproach of integrating an updating system inside the app itself is the easiest, this also saves me from re-compiling the debs and rpms every release and you from having to reinstall the program to update it (also please don't criticize the updating system I will get very angry if you do so). Right now updating only works on linux. The command to update is:
#### *sudo noter -u*
## "sudo noter"
While I didn't remove the ability to start noter as root because I don't believe in the limiting of choices (and also because it would break the updating system), I strongly suggest you use a trusted editor, such as vim or nano (I will not quit out of vim for you) instead of noter, the corners aren't exactly polished on root yet and I don't want to brake anyone's files, plus the live-commit thing will bite back if you make a mistake and don't remember how to fix it, if you do plan on using it regardless of my recomandations, please please make a backup of whatever file you're editing, it's one line of bash max. *TLDR*: only time you should have sudo in front of noter is when you have -u after.
## Different simultaneous versions
After my most recent commit, you probably saw that from now on there will be 2 versions at a time, the latest you can get binaries for and the slightly newer one (usually only bugfixes are added) that you can get by updating your current version using *sudo noter -u*, this is because compiling every binary and packing everything up takes time and effort and making all of this for a bug fix isn't really worth it, that being said this comes at the cost of people that just install it and don't read the doc won't have the newest version, I might fix this in the future by adding a after install script to my deb, rpm and tar.gz that updates for you but we'll see, just know this 2-version system is here to stay. 
## Compiling
Compiling is easy as 1-2-3, just do ```git clone https://github.com/KoNickss/noter_texteditor.git```, then cd into that folder, then into the folder of the version you want to compile, then do ```cmake .``` and then ```make```, you should get a 'noter' file, that is the binary, now run ```chmod 755 noter```. To complete the package just get the 'noter.desktop' file from the tar.gz release and place noter in /usr/bin/ and noter.desktop in /usr/share/applications/noter.desktop. This may require troubleshooting on other platforms. On windows you need qt creator installed, cmake+make doesn't work from what I tried.
## Closing message
That being said, you can now go forth, pick the right installer (or build from source if you have serious paranoia or windows) and go forth, make all the 2008 notepad tutorials your heart desires, more power to you!




# Releases: https://github.com/KoNickss/noter_texteditor/releases

