# Noter, a sane text editing program
This, above all, was me learning qt and making something I wished for: a simple and elegant KDE-friendly notepad, kwrite is imo kinda ugly and filled with useless options, the closest thing to notepad on linux was mousepad, but mousepad is the kind of package you don't let your kids around. Noter is supposed to emulate the feeling of the windows xp notepad, a simple place to jot down ideas in a hurry and maybe save them to a file, to keep in the spirit of keeping it as uncomplicated as possible, I added live save (changes commit automatically to the file) and args, and I plan to add more features in the future.
## Updates and multiplatform-ism
Multiplatform-ism is the best political ideology, you cannot change my mind. Because of this, the code you see above is compatible with linux, mac and windows (I will also publish already compiled installers for both macOS and Windows once I figure out how). This also raied a problem of it's own, how can I make a updating system to add features that work everywhere? I found out using the youtube-dl aproach of integrating an updating system inside the app itself is the easiest, this also saves me from re-compiling the debs and rpms every release and you from having to reinstall the program to update it (also please don't criticize the updating system I did this in a hurry at 3am at least it works ok?). Right now updating only works on linux, but Windows and MacOS are soon to follow. The command to update on linux is:
#### *sudo noter -lu*
## "sudo noter"
While I didn't remove the ability to start noter as root because I don't believe in the limiting of choices (and also because it would break the updating system), I strongly suggest you use a trusted editor, such as vim or nano (I will not quit out of vim for you) instead of noter, the corners aren't exactly polished on root yet and I don't want to brake anyone's files, plus the live-commit thing will bite back if you make a mistake and don't remember how to fix it, if you do plan on using it regardless of my recomandations, please please make a backup of whatever file you're editing, it's one line of bash max.
## Closing message
That being said, you can now go forth, pick the right installer (or build from source if you have serious paranoia or windows) and go forth, make all the 2008 notepad tutorials your heart desires, more power to you!




# Releases: https://github.com/KoNickss/noter_texteditor/releases

