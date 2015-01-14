PHONY: all
all:
	@echo "Only install is implemented"
	@echo "sudo make install"

PHONY: install
install:
	/bin/cp auto-deploy.sh /etc/rc.d/init.d/ && \
	chmod +x /etc/rc.d/init.d/auto-deploy.sh && \
	chkconfig --add auto-deploy.sh
