export TERM="xterm-color"
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_65.jdk/Contents/Home
export CATALINA_HOME=/Library/Tomcat
export TOMCAT_HOME=/Library/Tomcat

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u:~ \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\]$ "

