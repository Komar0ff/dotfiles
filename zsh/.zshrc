#Автодополнение
autoload -U compinit promptinit 
compinit
promptinit

# Корректировка ввода
setopt CORRECT_ALL

# Если в слове есть ошибка, предложить исправить её
SPROMPT="Ты походу где-то ошибся, дядь. Ввести %r вместо %R? ([Y]es/[N]o/[E]dit/[A]bort) "

# Не нужно всегда вводить cd
# просто наберите нужный каталог и окажитесь в нём
setopt autocd

# При совпадении первых букв слова вывести меню выбора
zstyle ':completion:*' menu select=long-list select=0
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Алиасы
alias vi='nvim'
alias grep='grep --colour=auto'

# История
# Хранить историю в указанном файле
export HISTFILE=~/.zsh_history

# Максимальное число команд, хранимых в сеансе
export HISTSIZE=1000
export SAVEHIST=$HISTSIZE

# Включить историю команд
setopt APPEND_HISTORY

# Убрать повторяющиеся команды, пустые строки и пр.
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
