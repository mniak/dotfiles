# dotfiles

### Installation on Windows
**Install Scoop** in admin powershell
```
iwr -useb get.scoop.sh | iex
// Some dependencies are required
// if you don't have it already
scoop install git
```

**Install Chezmoi** using scoop
```
scoop bucket add twpayne https://github.com/twpayne/scoop-bucket
scoop install chezmoi
```

### Initialization
**Point Chezmoi** to the repository
```
chezmoi init git@github.com:mniak/dotfiles.git

# Or using HTTPS
chezmoi init https://github.com/mniak/dotfiles.git
```

**Show difference** using
```
chezmoi diff
```
**Apply changes** using
```
chezmoi apply -v
```
