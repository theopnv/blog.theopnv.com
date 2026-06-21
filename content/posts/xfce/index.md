---
title: "A modern and lightweight Arch-Linux (xfce) configuration"
date: 2017-07-07T11:30:03+00:00
# weight: 1
# aliases: ["/first"]
tags: ["OS", "Linux"]
categories: ["OS"]
author: "Theo Penavaire"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
description: "Arch Linux - XFCE configuration"
#canonicalURL: "https://canonical.url/to/page"
disableShare: false
disableHLJS: false
hideSummary: false
searchHidden: true
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
cover:
    image: "desktop.png" # image path/url
    alt: "XFCE Desktop" # alt text
    relative: true # when using page bundles set this to true
---

I’m currently working on an Arch Linux distribution. What I love about it is the huge amount of Sys Admin stuff I learned while installing it again and again, each time faster than before, and with a better knowledge of what I was doing. I’m not going to explain how to install it, but rather present some packages I use to customize the default system.

## System utilities

Let's install the basics:

```bash
yaourt redshift oh-my-zsh
```

- `redshift` allows you to change the temperature of your screen. It tires the eyes less than having a blue screen, especially during the night.
- `oh-my-zsh` is a zsh plugin that easily lets you configure your zsh.

Then, with pacman (`sudo pacman -S [packages]`):

```bash
lxrandr xfce4-screenshooter xscreensaver
```

- `lxrandr` is a small utility that lets you configure the resolution and external monitors. It is graphical, and very user-friendly.
- The screenshooter is the official xfce screenshooter. You can set any keyboard shortcut to launch it in `Settings > Keyboard > Application Shortcuts`.
- I like to use xscreensaver to lock my PC. It’s customizable and there are plenty themes available. I often even display a RSS flux. It starts with the `xscreensaver-command --lock` command. It can be configured through `xscreensaver-command --demo`.

## XFCE is fast

I didn’t have the opportunity to test in depth a lot of graphical interfaces. Yet it’s because xfce remains my favorite for now, and I don’t feel like testing other GUIs, as this one entirely supplies my needs. It’s very fast, and highly customizable. During summer, I ended up having [this ChromeOS-like](https://linuxthemer.blogspot.fr/2014/06/make-xfce-look-like-chromeos-part-1.html) desktop, on xfce. Now I went back to a more classic layout.

### Autostart xfce at login

Simply add this line to your zshrc config file, if this is the shell you’re using :

```bash
startxfce4
```

I’m not found of login managers, as they tend to slow down boot time. Xfce is my only graphical interface, so I don't need to switch between it and something else or to change the language, keyboard disposition or brightness each time I log in. That’s why a simple console login is entirely sufficient for me.

### A beautiful xfce interface

[Here is](https://github.com/horst3180/arc-theme) a beautiful theme, for afficionados of flat and sober themes like me. Its creator also made a great theme for [firefox/chrome](https://github.com/horst3180/arc-theme#user-content-extras). The rendering is beautiful, and I didn't notice any bug so far.

It has several levels of configuration, from light to dark, each one very well explained on the github page. It works well with [this icon theme](http://www.ravefinity.com/p/vivacious-colors-gtk-icon-theme.html), and [this cursor theme](http://www.deviantart.com/art/KDE-Oxygen-Cursor-Theme-392284750).

What you need to do if you want your main folders to always have an icon on them when displayed in thunar (the default GUI file viewer) is to add these lines to a file called `~/.config/user-dirs.dirs`:

```bash
XDG_DESKTOP_DIR="$HOME/Desktop"
XDG_DOCUMENTS_DIR="$HOME/Documents"
XDG_DOWNLOAD_DIR="$HOME/Downloads"
XDG_MUSIC_DIR="$HOME/Music"
XDG_PICTURES_DIR="$HOME/Pictures"
XDG_PUBLICSHARE_DIR="$HOME/Public"
XDG_TEMPLATES_DIR="$HOME/.Templates"
XDG_VIDEOS_DIR="$HOME/Videos"
```

This looks like a completely different xfce now, doesn’t it? Of course, don’t forget to customize the panels to fulfill your needs. I personally like to have a few launchers in a Windows-like style. The softwares icons you’ll need can be downloaded on Google and then added to the `/usr/share/icons` folder.

### Conky

[Conky](https://wiki.archlinux.org/index.php/conky) is a little tool that allows to display system informations directly on the desktop. The refresh rate is customizable, and a lot of information can be displayed ([list of available variables here](http://conky.sourceforge.net/config_settings.html)). I like to keep it simple, and to **only display the date and time**. Here is how my `~/.conkyrc` file looks like :

```bash
#############################
# Conky settings
update_interval 10
total_run_times 0
double_buffer yes
no_buffers yes
#############################
# Text settings
use_xft yes
xftfont Ubuntu
#############################
# Window specifications
own_window yes
own_window_type override
own_window_transparent yes
own_window_hints undecorated,below,sticky,skip_taskbar,skip_pager
gap_x 90
gap_y 800
#############################
# Graphics settings
draw_shades no
default_color ffffff
#############################
TEXT
${font Open Sans Light:pixelsize=80}${time %H:%M}${font}
${alignc} ${font Open Sans Light:pixelsize=30}${time %d %b %Y}${font}
```

There are plenty ways to configure the date and time format, [listed here](https://ubuntuforums.org/showthread.php?t=1943490#post_11778553).

That’s it for my Arch configuration. I mainly talked about the graphical customization, because I like to interact with my OS through the GUI as well as through the command line. When the system is freshly installed, you already have almost every console tool you need, but, unlike Windows (already good-looking when installed), if you want your GUI (xfce) to look modern, you have to accept to take some time to customize it. Xfce is definitely a great GUI as it is fast and customizable, but by default, it’s also very old-fashioned !

Si vous êtes francophone, n’hésitez pas à lire ma revue de l’interface graphique de Deepin, un outsider dans le monde de linux bien sympathique !
