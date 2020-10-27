color_prompt=yes

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#PS1='\[\033[36;1m\]\u\[\033[32m\]@\h:\[\033[33;1m\]\w\[\033[m\]\$ '
alias ls='ls -Gha'
# alias ls='ls -Gha | less -iXRS'
alias .bash_profile='source ~/.bash_profile'

alias tlmgr='tlmgr -gui &'
alias texdoctk='texdoctk &'

# alias 'git log'='git log --all --decorate --oneline --graph'

# Using EmacsClient
# https://www.emacswiki.org/emacs/EmacsClient#toc20
#alias emacs='emacsclient -create-frame --alternate-editor=""'
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -c -a emacs"         # $EDITOR opens in terminal
export VISUAL="emacsclient -c -a emacs"         # $VISUAL opens in GUI mode

# TeXLive
# Add /Users/hbshim/.local/texlive/2019/texmf-dist/doc/man to MANPATH.
# Add /Users/hbshim/.local/texlive/2019/texmf-dist/doc/info to INFOPATH.
# Most importantly, add /Users/hbshim/.local/texlive/2019/bin/x86_64-darwin
# to your PATH for current and future sessions.
# Logfile: /Users/hbshim/.local/texlive/2019/install-tl.log
export MANPATH="/Users/hbshim/.local/texlive/2019/texmf-dist/doc/man:$MANPATH"
export INFOPATH="/Users/hbshim/.local/texlive/2019/texmf-dist/doc/info:$INFOPATH"
export PATH="/Users/hbshim/.local/texlive/2019/bin/x86_64-darwin:$PATH"
export PATH="/Users/hbshim/.local/bin:$PATH"
# Homebrew's sbin was not found in your PATH but you have installed
# formulae that put executables in /usr/local/sbin.
# Consider setting the PATH for example like so:
export PATH="/usr/local/sbin:$PATH"
###############################################################################
# packages installed by brew
###############################################################################

export MANPATH="/usr/local/share/man:$MANPATH"
export INFOPATH="/usr/local/share/info:$INFOPATH"

# libffi is keg-only, which means it was not symlinked into /usr/local,
# because macOS already provides this software and installing another version in
# parallel can cause all kinds of trouble.
# For compilers to find libffi you may need to set:
#   export LDFLAGS="-L/usr/local/opt/libffi/lib"
#   export CPPFLAGS="-I/usr/local/opt/libffi/include"
# For pkg-config to find libffi you may need to set:
#   export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"


# opam configuration
test -r /Users/hbshim/.opam/opam-init/init.sh && . /Users/hbshim/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# perlbrew - for perl/tk
source ~/perl5/perlbrew/etc/bashrc

#PATH="/Users/hbshim/perl5/bin${PATH:+:${PATH}}"; export PATH;
#PERL5LIB="/Users/hbshim/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
#PERL_LOCAL_LIB_ROOT="/Users/hbshim/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
#PERL_MB_OPT="--install_base \"/Users/hbshim/perl5\""; export PERL_MB_OPT;
#PERL_MM_OPT="INSTALL_BASE=/Users/hbshim/perl5"; export PERL_MM_OPT;
export PATH="/Users/hbshim/perl5/bin:$PATH"
export PERL5LIB="/Users/hbshim/perl5/lib/perl5:$PERL5LIB"
export PERL_LOCAL_LIB_ROOT="/Users/hbshim/perl5:$PERL_LOCAL_LIB_ROOT"
export PERL_MB_OPT="--install_base \"/Users/hbshim/perl5\""
export PERL_MM_OPT="INSTALL_BASE=/Users/hbshim/perl5"

# suppress "The default interactive shell is now zsh" message
# https://www.addictivetips.com/mac-os/hide-default-interactive-shell-is-now-zsh-in-terminal-on-macos/
export BASH_SILENCE_DEPRECATION_WARNING=1

# "path" lists directories in the PATH variables in a readable way
# https://www.cyberciti.biz/faq/howto-print-path-variable/
function path(){
    old=$IFS
    IFS=:
    printf "%s\n" $PATH
    IFS=$old
}
function manpath(){
    old=$IFS
    IFS=:
    printf "%s\n" $MANPATH
    IFS=$old
}
function infopath(){
    old=$IFS
    IFS=:
    printf "%s\n" $INFOPATH
    IFS=$old
}

bash --version
