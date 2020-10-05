Very Simple Snippet Tool for ZSH
================================

![USAGE for zsh-simple-snippet](https://github.com/amane-uehara/resource/blob/master/zsh-simple-snippet/cui.gif)

By typing space key, the snippet just before the cursor is expanded like vim iab style.
`<CS>` is the cursor jump point and it works whenever CTRL-j is typed.

Install
-------

**This tool depends only on zsh.**
**No other program such as sed, awk, perl, ruby, python, etc is required.**

If you use zgen or some other installation tools,

```sh
zgen load amane-uehara/zsh-simple-snippet
```

Manually,

```sh
git clone https://github.com/amane-uehara/zsh-simple-snippet.git
```

Configuration
-------------

Following configuration is required in `~/.zshrc`.

```zsh
source /path/to/zsh-simple-snippet/snippet.zsh

# default snippet collection
# source /path/to/zsh-simple-snippet/example.zsh

# keybind
bindkey            " "   snippet-expand
bindkey -M isearch " "   self-insert
bindkey            "^j"  snippet-next-cursor # ^j corresponds to CTRL-j
bindkey            "^m"  snippet-exec-after-next-cursor
bindkey            "^x " snippet-not-expand
```

Register new snippets
---------------------

It is helpful to read [example.zsh](./example.zsh).

To register a snippet **expanded only at line-beginning**, add the following configuration in zshrc.

```zsh
snippets_begin+=( pg "ps aux |egrep '<C0>' <CS>")

# If "pg" appears at the beginning (left side) of the command line,
# it will be replaced by "ps aux |egrep '<C0>' <CS>" by typing space key.
# After the expansion, the cursor jumps to <C0>.
# When Ctrl-m or Ctrl-j is typed, the cursor jumps to next <CS>.
# The difference between Ctrl-m and Ctrl-j is that
# Ctrl-m execute the command line buffer, while Ctrl-j does not.

snippets_begin+=( ll   "ls -l <C0>")
snippets_begin+=( fa   "for a in <C0> ;do <CS> ;done <CS>")
snippets_begin+=( xtgz "gzip -dc <C0>.tgz | tar xvf - <CS>")
```

To register a snippet **expanded at all time**, add the following configuration in zshrc.

```zsh
snippets_always+=( gp "egrep '<C0>' <CS>")

# Whenever "gp" appears, it will be replaced by "egrep '<C0>' <CS>" by typing space key.
# Cursor-jump behavior is the same as snippets_begin type replacement.

snippets_always+=( wl "while read line ;do <C0> ;done <CS>")
snippets_always+=( sd "sed -e 's/<C0>/<CS>/<CS>' <CS>")
```

Author
------

[@amane-uehara](https://github.com/amane-uehara)

## LICENSE
----------

* MIT
  * see LICENSE.txt
