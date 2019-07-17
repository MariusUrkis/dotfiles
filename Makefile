
BACKUPDIR:=${HOME}/.dotfiles-backup
DOTFILES:=.bashrc .inputrc .profile
DATE:=$(shell date +"%Y%m%d-%H%M%S")
BACKUPFILE:=${BACKUPDIR}/dotfiles-backup-$(DATE).tar

backup:
	echo "Creating backup for the existing dotfiles"
	mkdir -p ${BACKUPDIR}
	cd ${HOME}
	tar cf ${BACKUPFILE} ${DOTFILES}
	
install: backup
	echo "Installing new dotfiles"
	cp -p ${DOTFILES} ${HOME}
