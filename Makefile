.PHONY: all

dependencies:
	brew install jq
	npm install authenticator-cli -g

link:
	ln -s `pwd`/connect-vpn /usr/local/bin/connect-vpn

setup: dependencies link
