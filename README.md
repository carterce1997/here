## `here`: Open a Terminal Where You Left Off

If you're like me, a hard-livin' type who does most of his work in the terminal, then you know how frustrating it is when you need to open _multiple_ terminals in the same location. Most of the time, when working on a project, you need a terminal in the specific location you're working in already. 

`here` solves that issue with two commands. Navigating to the desired working directory and running `here` will mean that every subsequent terminal is opened there. When you're done working, running `there` will reset your opening working directory to your home directory. 

## Setup

Once you clone the repository, install using these commands.
```
cd here
make
sudo make install
```

You will also need to add this to your `.bashrc` or equivalent.

```{bash}
HERE=$HOME/.here
[ -s $HERE ] && cd $(cat $HERE)
```

You may also like to know when you have `here` activated in your shell. In bash, you can write a function like the following, and call it in your `PS1` to add a cute folder icon to your prompt.

```{bash}
function here_flag {
	[ -s $HERE ] && printf '\Uf413  '
}
```

Honestly, it's so simple, it feels stupid. You probably could have done this yourself. Enjoy!
