# ============================================================
# 别名分类整理
# ============================================================

alias getidf='source $HOME/esp/esp-idf/export.sh'

alias ccp='clipcopy'
# 后缀别名
alias -s md='mlux'
alias -s png='kitty +kitten icat'
alias vim='nvim'
# ============================================================
# 系统操作
# ============================================================
alias c="clear"                          # 清屏
alias  	c=clear

# 安全执行（禁止 zsh 自动纠错）
alias  	cp='nocorrect cp'
alias  	mv='nocorrect mv'
alias  	mkdir='nocorrect mkdir'
alias  	man='nocorrect man'
alias  	su='nocorrect su'
alias  	sudo='nocorrect sudo'
alias  	please=sudo                      # 忘记加 sudo 时补救

# ============================================================
# 构建与编译（自动使用所有 CPU 核心）
# ============================================================
alias make="make -j`nproc`"
alias  	make='make -j16'
alias ninja="ninja -j`nproc`"
alias  	ninja='ninja -j16'
alias n="ninja"
alias  	n=ninja

alias cman='man -M /usr/share/man/zh_CN'

# ============================================================
# 包管理 — Pacman
# ============================================================
alias rmpkg="sudo pacman -Rsn"             # 卸载包及其依赖和配置文件
alias  	rmpkg='sudo pacman -Rsn'
alias cleanch="sudo pacman -Scc"            # 清理包缓存
alias fixpacman="sudo rm /var/lib/pacman/db.lck"  # 修复锁文件
alias  	fixpacman='sudo rm /var/lib/pacman/db.lck'
alias update="sudo pacman -Syu"             # 系统更新
alias  	update='sudo pacman -Syu'
alias cleanup="sudo pacman -Rsn $(pacman -Qtdq)"  # 清理孤立包

# ============================================================
# 目录导航
# ============================================================
alias  	...=../..                        # 上两级
alias  	......=../../../../..            # 上五级（数点个数）
alias  	md='mkdir -p'                    # 递归创建目录
alias  	rd=rmdir                         # 删除空目录
alias  	x=extract                        # 自动解压（oh-my-zsh extract 插件）
alias  	grt='cd "$(git rev-parse --show-toplevel || echo .)"'  # 跳转到 git 根目录

# ============================================================
# 查看与搜索
# ============================================================
alias  	eza='eza --icons=auto --git -lh --color=always'            # 彩色文件列表（eza 替代 ls）
alias   ls='eza --icons=auto --git -lh --color=always'
alias  	rgn='rg --no-line-number'
alias  	fgrep='grep -F'

# 最近安装的包
alias  	rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"

# ============================================================
# 历史记录
# ============================================================
alias  	h=history
alias  	history=omz_history
alias  	hl='history | less'              # 分页浏览历史
alias  	hs='history | grep'               # 搜索历史（大小写敏感）
alias  	hsi='history | grep -i'           # 搜索历史（忽略大小写）

# ============================================================
# 系统日志与诊断
# ============================================================
alias  	jctl='journalctl -p 3 -xb'       # 查看系统错误日志（优先级 3=错误）

# ============================================================
# 网络与实用工具
# ============================================================
alias  	tb='nc termbin.com 9999'         # 粘贴到 termbin.com（终端 Pastebin）
alias  	run-help=man                     # 获取帮助（run-help 指向 man）
alias  	which-command=whence             # 查看命令路径

# ============================================================
# Git 操作（oh-my-zsh git 插件别名）
# ============================================================

# --- 基础命令 ---
alias  	g=git
alias  	ghh='git help'

# --- 分支管理 ---
alias  	gb='git branch'
alias  	gba='git branch --all'
alias  	gbr='git branch --remote'
alias  	gbd='git branch --delete'
alias  	gbD='git branch --delete --force'
alias  	gbnm='git branch --no-merged'
alias  	gbm='git branch --move'
alias  	gbg='LANG=C git branch -vv | grep ": gone\]"'                  # 查看已合并的远程分支
alias  	gbgd='LANG=C git branch --no-color -vv | grep ": gone\]" | cut -c 3- | awk '\''{print $1}'\'' | xargs git branch -d'
alias  	gbgD='LANG=C git branch --no-color -vv | grep ": gone\]" | cut -c 3- | awk '\''{print $1}'\'' | xargs git branch -D'

# --- 切换分支 ---
alias  	gco='git checkout'
alias  	gcor='git checkout --recurse-submodules'
alias  	gcb='git checkout -b'
alias  	gcB='git checkout -B'
alias  	gcd='git checkout $(git_develop_branch)'
alias  	gcm='git checkout $(git_main_branch)'
alias  	gsw='git switch'
alias  	gswc='git switch --create'
alias  	gswd='git switch $(git_develop_branch)'
alias  	gswm='git switch $(git_main_branch)'

# --- 提交管理 ---
alias  	gc='git commit --verbose'
alias  	'gc!'='git commit --verbose --amend'
alias  	gca='git commit --verbose --all'
alias  	'gca!'='git commit --verbose --all --amend'
alias  	gcam='git commit --all --message'
alias  	'gcan!'='git commit --verbose --all --no-edit --amend'
alias  	'gcann!'='git commit --verbose --all --date=now --no-edit --amend'
alias  	'gcans!'='git commit --verbose --all --signoff --no-edit --amend'
alias  	gcas='git commit --all --signoff'
alias  	gcasm='git commit --all --signoff --message'
alias  	gcmsg='git commit --message'
alias  	gcn='git commit --verbose --no-edit'
alias  	'gcn!'='git commit --verbose --no-edit --amend'
alias  	gcs='git commit --gpg-sign'
alias  	gcsm='git commit --signoff --message'
alias  	gcss='git commit --gpg-sign --signoff'
alias  	gcssm='git commit --gpg-sign --signoff --message'

# --- 推送与拉取 ---
alias  	gp='git push'
alias  	gpd='git push --dry-run'
alias  	gpf='git push --force-with-lease --force-if-includes'
alias  	'gpf!'='git push --force'
alias  	gpv='git push --verbose'
alias  	gpsup='git push --set-upstream origin $(git_current_branch)'
alias  	gpsupf='git push --set-upstream origin $(git_current_branch) --force-with-lease --force-if-includes'
alias  	gpoat='git push origin --all && git push origin --tags'
alias  	gpod='git push origin --delete'
alias  	gpu='git push upstream'
alias  	ggpush='git push origin "$(git_current_branch)"'
alias  	ggsup='git branch --set-upstream-to=origin/$(git_current_branch)'
alias  	gl='git pull'
alias  	gpr='git pull --rebase'
alias  	gpra='git pull --rebase --autostash'
alias  	gprav='git pull --rebase --autostash -v'
alias  	gprv='git pull --rebase -v'
alias  	gprom='git pull --rebase origin $(git_main_branch)'
alias  	gpromi='git pull --rebase=interactive origin $(git_main_branch)'
alias  	gprum='git pull --rebase upstream $(git_main_branch)'
alias  	gprumi='git pull --rebase=interactive upstream $(git_main_branch)'
alias  	ggpull='git pull origin "$(git_current_branch)"'
alias  	gluc='git pull upstream $(git_current_branch)'
alias  	glum='git pull upstream $(git_main_branch)'
alias  	gf='git fetch'
alias  	gfa='git fetch --all --tags --prune --jobs=10'
alias  	gfo='git fetch origin'
alias  	gup=$'\n    print -Pu2 "%F{yellow}[oh-my-zsh] \'%F{red}gup%F{yellow}\' is a deprecated alias, using \'%F{green}gpr%F{yellow}\' instead.%f"\n    gpr'
alias  	gupa=$'\n    print -Pu2 "%F{yellow}[oh-my-zsh] \'%F{red}gupa%F{yellow}\' is a deprecated alias, using \'%F{green}gpra%F{yellow}\' instead.%f"\n    gpra'
alias  	gupav=$'\n    print -Pu2 "%F{yellow}[oh-my-zsh] \'%F{red}gupav%F{yellow}\' is a deprecated alias, using \'%F{green}gprav%F{yellow}\' instead.%f"\n    gprav'
alias  	gupom=$'\n    print -Pu2 "%F{yellow}[oh-my-zsh] \'%F{red}gupom%F{yellow}\' is a deprecated alias, using \'%F{green}gprom%F{yellow}\' instead.%f"\n    gprom'
alias  	gupomi=$'\n    print -Pu2 "%F{yellow}[oh-my-zsh] \'%F{red}gupomi%F{yellow}\' is a deprecated alias, using \'%F{green}gpromi%F{yellow}\' instead.%f"\n    gpromi'
alias  	gupv=$'\n    print -Pu2 "%F{yellow}[oh-my-zsh] \'%F{red}gupv%F{yellow}\' is a deprecated alias, using \'%F{green}gprv%F{yellow}\' instead.%f"\n    gprv'
alias  	gg=ggpull                        # 兼容旧版别名
alias  	ggpur=ggu

# --- 差异与日志 ---
alias  	gd='git diff'
alias  	gdca='git diff --cached'
alias  	gdcw='git diff --cached --word-diff'
alias  	gds='git diff --staged'
alias  	gdt='git diff-tree --no-commit-id --name-only -r'
alias  	gdup='git diff @{upstream}'
alias  	gdw='git diff --word-diff'
alias  	glo='git log --oneline --decorate'
alias  	glg='git log --stat'
alias  	glgg='git log --graph'
alias  	glgga='git log --graph --decorate --all'
alias  	glgm='git log --graph --max-count=10'
alias  	glgp='git log --stat --patch'
alias  	glog='git log --oneline --decorate --graph'
alias  	gloga='git log --oneline --decorate --graph --all'
alias  	glol='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset"'
alias  	glola='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --all'
alias  	glols='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --stat'
alias  	glod='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset"'
alias  	glods='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short'
alias  	glp=_git_log_prettily
alias  	gsh='git show'
alias  	gsps='git show --pretty=short --show-signature'
alias  	gwch='git whatchanged -p --abbrev-commit --pretty=medium'
alias  	gcount='git shortlog --summary --numbered'
alias  	gdct='git describe --tags $(git rev-list --tags --max-count=1)'
alias  	gbl='git blame -w'

# --- 状态与查看 ---
alias  	gst='git status'
alias  	gss='git status --short'
alias  	gsb='git status --short --branch'
alias  	gfg='git ls-files | grep'
alias  	gignored='git ls-files -v | grep "^[[:lower:]]"'

# --- 远程仓库 ---
alias  	gr='git remote'
alias  	gra='git remote add'
alias  	grmv='git remote rename'
alias  	grrm='git remote remove'
alias  	grset='git remote set-url'
alias  	grup='git remote update'
alias  	grv='git remote --verbose'

# --- 重置与还原 ---
alias  	grh='git reset'
alias  	grhh='git reset --hard'
alias  	grhk='git reset --keep'
alias  	grhs='git reset --soft'
alias  	gru='git reset --'
alias  	groh='git reset origin/$(git_current_branch) --hard'
alias  	grev='git revert'
alias  	greva='git revert --abort'
alias  	grevc='git revert --continue'
alias  	grs='git restore'
alias  	grss='git restore --source'
alias  	grst='git restore --staged'
alias  	gpristine='git reset --hard && git clean --force -dfx'
alias  	gwipe='git reset --hard && git clean --force -df'

# --- 合并与变基 ---
alias  	gm='git merge'
alias  	gma='git merge --abort'
alias  	gmc='git merge --continue'
alias  	gmff='git merge --ff-only'
alias  	gmom='git merge origin/$(git_main_branch)'
alias  	gms='git merge --squash'
alias  	gmtl='git mergetool --no-prompt'
alias  	gmtlvim='git mergetool --no-prompt --tool=vimdiff'
alias  	gmum='git merge upstream/$(git_main_branch)'
alias  	grb='git rebase'
alias  	grba='git rebase --abort'
alias  	grbc='git rebase --continue'
alias  	grbd='git rebase $(git_develop_branch)'
alias  	grbi='git rebase --interactive'
alias  	grbm='git rebase $(git_main_branch)'
alias  	grbo='git rebase --onto'
alias  	grbom='git rebase origin/$(git_main_branch)'
alias  	grbs='git rebase --skip'
alias  	grbum='git rebase upstream/$(git_main_branch)'

# --- 储藏 ---
alias  	gsta='git stash push'
alias  	gstaa='git stash apply'
alias  	gstall='git stash --all'
alias  	gstc='git stash clear'
alias  	gstd='git stash drop'
alias  	gstl='git stash list'
alias  	gstp='git stash pop'
alias  	gsts='git stash show --patch'
alias  	gstu='gsta --include-untracked'

# --- 子模块 ---
alias  	gsi='git submodule init'
alias  	gsu='git submodule update'

# --- 标签 ---
alias  	gta='git tag --annotate'
alias  	gtl='gtl(){ git tag --sort=-v:refname -n --list "${1}*" }; noglob gtl'
alias  	gts='git tag --sign'
alias  	gtv='git tag | sort -V'

# --- 签出与克隆 ---
alias  	gcl='git clone --recurse-submodules'
alias  	gclf='git clone --recursive --shallow-submodules --filter=blob:none --also-filter-submodules'
alias  	gcf='git config --list'
alias  	gignore='git update-index --assume-unchanged'
alias  	gunignore='git update-index --no-assume-unchanged'

# --- 工作树 ---
alias  	gwt='git worktree'
alias  	gwta='git worktree add'
alias  	gwtls='git worktree list'
alias  	gwtmv='git worktree move'
alias  	gwtrm='git worktree remove'

# --- Cherry-pick ---
alias  	gcp='git cherry-pick'
alias  	gcpa='git cherry-pick --abort'
alias  	gcpc='git cherry-pick --continue'

# --- Reflog 与 Bisect ---
alias  	grf='git reflog'
alias  	gbs='git bisect'
alias  	gbsb='git bisect bad'
alias  	gbsg='git bisect good'
alias  	gbsn='git bisect new'
alias  	gbso='git bisect old'
alias  	gbsr='git bisect reset'
alias  	gbss='git bisect start'

# --- 杂项 ---
alias  	gclean='git clean --interactive -d'
alias  	grm='git rm'
alias  	grmc='git rm --cached'
alias  	gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign --message "--wip-- [skip ci]"'
alias  	gunwip='git rev-list --max-count=1 --format="%s" HEAD | grep -q "\--wip--" && git reset HEAD~1'
alias  	gg='git gui citool'
alias  	gga='git gui citool --amend'
alias  	gk='\gitk --all --branches &!'
alias  	gke='\gitk --all $(git log --walk-reflogs --pretty=%h) &!'
alias  	git-svn-dcommit-push='git svn dcommit && git push github $(git_main_branch):svntrunk'
alias  	gsd='git svn dcommit'
alias  	gsr='git svn rebase'
