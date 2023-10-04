See https://github.com/nativefier/nativefier for more info on Nativefier.
This flake sets up a Nix dev-shell that installs nativefier using npm. This keeps everything in one place that can easily be deleted later and runs completely in user-space.
I have only tested this in NixOS. I don't know if it will work in Nix environments on other operating systems.

1) Clone repo and ```cd nativefier-flake```
2) Run ```nix develop```
3) Be patient. It can take a bit to download and the progress bar isn't very informative.
4) If everything worked, you can run ```nativefier``` from this path.
5) When you're done with nativefier, just press ctrl-d or type exit to leave this dev-shell.

