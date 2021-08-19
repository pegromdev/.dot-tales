# Aplication List and Tools

# vim:fileencoding=utf-8:ft=conf:foldmethod=marker

#: System Fonts {{{

# Monospace font of I3
ttf-inconsolata
# Sans and serif fonts for Linux
ttf-linux-libertine
# Fonts for dunst
nerd-fonts-terminus
# Another Kitty Fonts to be use with Ranger
nerd-fonts-sorce-code-pro
# Kitty Fonts
adobe-source-code-pro-fonts

#: }}}

#: Main System {{{

# Graphical server.
xorg-server
# Starts the graphical server.
xorg-xinit
# Open Source 3D acceleration driver for nVidia cards
f86-video-nouveau
# An open-source implementation of the OpenGL specification
mesa
# Intel drivers
vulkan-intel
# Does exactly what it sounds like.
networkmanager
# Audio system (>inb4 bloat).
pulseaudio
# Ncurses audio controller.
pulsemixer
# Bluetooth protocol
bluez
# Development and debugging utilities for the bluetooth protocol stack
bluez-utils
# PulseAudio bluetooth suport
pulseaudio-bluetooth
# MinimalTerminal experiences
rxvt-unicode
# Modern, hackable, featureful, OpenGL based terminal emulator
kitty
# Very advanced and programmable command interpreter (shell) for UNIX
zsh
# Serves as the system keyring.
gnome-keyring
# Dot-files system recovery
stow
# USB AWUS1900 driver
rtl8814au-dkms-git
#: }}}

#: Desktop  {{{

# Window manager.
i3-gaps
# I3Lock with Blur and fancies
i3lock-fancy-git
#  statusline 
i3status-rust
# Window switcher, application launcher and dmenu replacement
rofi
# Looks and feel
lxappearance
# Arc Gruvbox gtk theme
gtk-theme-arc-gruvbox-git
# X compositor
picom-tryone-git
# Aids with resolution determination and screen recording.
xorg-xdpyinfo
# Tool for detecting window properties.
xorg-xprop
# Provides window action utilities on the command line.
xdotool
# Fast and light imlib2-based image viewer
feh
# Allows desktop notifications.
libnotify
# Suckless notification system.
dunst
# Hides an inactive mouse.
unclutter-xfixes-git
# Media player controller and lib for spotify, vlc, audacious, bmp, xmms2, and others.
playerctl
# Special escape functionallity
xcape
# Adjusts the color temperature of your screen according to your surroundings, with minimal dependencies.
redshift-minimal

#: }}}

#:  Tools {{{

# google translator
translate-shell
# Full featured CLI system information tool
inxi
# XSel is a command-line program for getting and setting the contents of the X selection
xsel
# Command line interface to the X11 clipboard
xclip
# Fuzzy finder tool.
fzf
# Runs commands and provides a UI for selection.
dmenu
# Dmenu Launcher Alternative
rofi
# Bookmark Manager
buku
# Simple, fast and user-friendly alternative to 'find'
fd
# Cat(1) clone with wingsa
bat
# Command line interface to the freedesktop.org trashcan
trash-cli
# Terminal browser which can also view images.
w3m
# Reader Mode for the  terminal
readability-cli
# Find uitlity I use with Ranger
mlocate
# GNU stream editor
sed
# Run arbitrary commands when files change
entr
# Ncurses disk size analyzer
ncdu
# Filter the latest Pacman mirror list script
reflector
# Most powerfull syncking tool
rsync
# Cloud framework for rsync
rclone
# rar's extracting
unrar
# zip's extracting
unzip
# Hardware detection tool from openSUSE
hwinfo
# Vim with some useful features
gvim
# Terminal Multiplexer
tmux
# Used for system monitor info
conky
# Image Manipulation tool
imagemagick
# FUSE filesystem that supports reading/writing from MTP devices
simple-mtpfs 
# Can take quick screenshots at your request.
maim
# Can record and splice video and audio on the command line.
ffmpeg
# Command-line todo list manager
task
# Can download any YouTube video (or playlist or channel) when given the link.
youtube-dl
# udemy downloader
udemy-dl-git
# Passsword management
pass
# Browser-independent bookmark manager
buku
# fzf font viewer
fontpreview
# Python package Manager
python-pip
# Clod sync tool
rclone
# expect ( interactive AI automatation tool for scripting )
expect
# glow cli markdown preview
glow
# A universal document converter
pandoc
# Streamming torrent 
webtorrent-cli
# Better ls tool	
lsd
# Better Ps alternative
procs
# nb browser dependency	
nmap	
#: }}}

#: Apps {{{

# TUI
# Ncurses disk size analyzer
ncdu
# CLI system information tool written in BASH that supports displaying images.
neofetch
# Interactive process viewer
htop
# Process viewer
bpytop
# Terminal file manager.
ranger
# Text-mode interface for Git.
tig
# Terminal RSS client.
newsboat
# TUI Reddit client
tuir
# Email
mutt-wizard-git
# Browser
lynx
# Youtube
pipe-viewer-git
# ImageViewer
ucollage
# ncmpcpp mpd client
ncmpcpp
# mpd music server
mpd
# mpc mpd controller
mpc

# GUI
# Standalone web browser from mozilla.org
firefox
# Patrician's choice video/gif player.
mpv
# Minimalist image viewer.
sxiv
# A pdf viewer with vim-like bindings.
zathura
# Allows mupdf pdf compatibility in zathura.
zathura-pdf-mupdf
# Music Streamming Service
spotify-snap
# Flash Os images ro sd or usb
etcher
#Kodi
kodi-x11 
kodi-addon-inputstream-adaptive-git  
kodi-addon-pvr-iptvsimple           
kodi-x11
 # Rclone GUI
rclone-browser 
# Virt-manager Hypervisor
quemu
libvirt
vitr-manager

# }}}

#: Programming {{{

# Nodejs Plataform
nodejs
# Node package manager
npm


#: }}}

#: Git Clones {{{

#: }}}
 
#: NPM Packages {{{

#NB cli note-taking, bookmarking, archiving, and knowledge base application with:
# https://github.com/xwmx/nb
# @ npm install -g nb.sh

# cli note taking 
# @ npm install -g joplin

# cli torrent steamming ( Need to learn how to use it, Currently not installed )
# @ npm install -g webtorrent

# mm cli mind-maping tool.	
# @ npm i -g mind-map-cli

#: }}}

#: PIP Packages {{{

# Visual Interactive Taskwarrior full-screen terminal interface.
#vit  

#: }}}

#: Uninstalled; maybe will reinitall later {{{

#N,  Tool that helps to detect errors and potential problems in your JavaScript code.
#jshint
#N, Locally view markdown files in a browser.
#md-fileserver
#N, Get download size for npm packages
#download-size
#P, An implementation of the Language Server Protocol for Python to be use with Coc
#python-language-server,
#P, Alternative for w3mimgdisplay 
#ueberzug
# Allows your computer to access dos-like filesystems.
#dosftools
# Allows management of FAT drives.
#exfat-utils
# Allows accessing NTFS partitions.
#ntfs-3g
# Audio interface with ALSA.
#pulseaudio-alsa
# Excel-like terminal spreadsheet manager.
#sc-im
# Aocket utility.
#socat
# Parses URLs in the terminal allowing keyboard-based selection.
#urlscan
# Allows a user to select urls in the terminal via the keyboard.
#xurls
# Gives zathura the ability to read .djvu files.
#zathura-djvu
# Manipulates .pdfs and gives .pdf previews and other .pdf functions.
#poppler
# Manages and gives information about archives.
#atool
# Browser plugin designed for the viewing of premium video content
#chromium-widevine
# High-performance, open source, schema-free document-oriented database
#mongodb-bin
# The MongoDB tools provide import, export, and diagnostic capabilities.
#mongodb-tools
# Mutt terminal email client with added features
#neomutt
# keyboard-focused browser with a minimal GUI
#qutebrowser
# Fast and secure tunneling daemon	
#fastd
# System Scan Utility
#tiger

#: }}}


