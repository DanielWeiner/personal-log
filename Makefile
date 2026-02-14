.PHONY: install

install : 
	sudo install -Dm644 "src/personal-log-env.sh" "/etc/profile.d/personal-log-env.sh"
	sudo install -Dm755 "src/personal-log" "/usr/local/bin/personal-log"
	sudo install -Dm755 "src/readlog" "/usr/local/bin/readlog"
	sudo install -Dm755 "src/searchlog" "/usr/local/bin/searchlog"
	