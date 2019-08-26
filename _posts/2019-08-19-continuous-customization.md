---
layout: post
title: "continuous-customization"
---

# Continuous customization
---
In January of this year (2019), I decided I'd had enough. I was running Windows 10 with Windows Subsystem for Linux, using zsh as my shell with oh-my-zsh. Developing within WSL felt good, but every (ultimately inevitable) interaction with my Windows environment was a pain. So I installed Ubuntu and never looked back.<br>
On Linux, my biggest game changer so far is the [i3](https://i3wm.org/) window manager. It is a tiling window manager, which means that it places your windows for you, and makes it easy and fast to change their position and size. Simply put, whenever I have to use anything else, everything feels harder than it should be, and it knocks me out of my zone.<br>
I am a big fan of customization and good user experience (beginning with my own experience). I strive to build an environment where I can move [at the speed of thought](https://www.vim.org/). Therefore, whenever I experience friction while performing a task, I put some thought into removing that friction.<br>
Surely, chasing improvements in every part of my workflow will make me more productive over time, but that's not why I do it. To me the important thing is that these tweaks allow me to say in "[the zone](https://en.wikipedia.org/wiki/Flow_(psychology))" longer.<br>
The following aliases allow me to achieve what I call *continuous customization*:
```bash
alias vc="vim -n ~/.vimrc"
alias zc="vim -n ~/.zshrc; source ~/.zshrc"
alias ic="vim -n ~/.config/i3/config"
```

(depending on your preferences, you may want to replace `vim` with some other `$EDITOR`)<br>
Whenever I want to tweak my workflow a little bit, I just open a terminal (in i3, this is just a quick keyboard shortcut away), enter two letters, and make the change I need.
