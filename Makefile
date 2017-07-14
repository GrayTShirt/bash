
BIN=$(HOME)/.bin
install:
	install -d $(BIN)
	install -m 0755 gitprompt $(BIN)/gitprompt
	install -m 0755 ts $(BIN)/ts
	install -m 0644 bashrc $(HOME)/.bashrc	
	echo -e "if [ -f $${HOME}/.bashrc ] ; then\n. $${HOME}/.bashrc\nfi" >> ~/.bash_profile
