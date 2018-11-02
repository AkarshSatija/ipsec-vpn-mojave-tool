.PHONY: all

dependencies:
	brew install jq
	npm install authenticator-cli -g

link:
	ln -s `pwd`/connect-vpn /usr/local/bin/connect-vpn
	ln -s `pwd`/config.json ~/vpn-ipsec-mojave-tool.json

setup: dependencies link
