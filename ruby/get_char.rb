system 'stty raw -echo'
str = STDIN.getc

p str.chr

system 'stty -raw echo'
