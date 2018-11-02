## vpn ipsec mojave tool
### IPsec Workaround for mojave Ipsec for a TOTP password

- install jq using brew and authenticator-cli from npm || or `make dependencies`
- download vpn profiles from gate, and insert any random password. It will generate keychain profile
- go to keychain access, search for your vpn profiles based on name, double click and get your profile name and XAUTH id for each profile
- copy `config.json` from `config.json.sample`
- put your vpn name and XAUTH id as a json at location: `config.json` from `config.json.sample` in this format:
```
   {
    "Your Integration":"94C3545E-0901-4781-B0D7-288B4E29BC7B.XAUTH",
    "Your Production":"6CFACF7D-C93D-448A-BEE8-DC4D52EE5AC2.XAUTH"
    }
```
- replace all values in connect vpn profiles file with your personal value, without bracket
- link `connect-vpn` file into `/usr/local/bin` or run `make link`
- link  `config.json` to `~/vpn-ipsec-mojave-tool.json` or run `make link`
	 `ln -s `pwd`/config.json ~/vpn-ipsec-mojave-tool.json`
- add your gate/googleAuth token into keychain
	- go to keychain, then File>New Password Item
	- Use "keychain item name" and "account Name" same
	- add token in password field
	- save it and add that "keychain item name" in config file as "keychainGAuthId"
- use this function by calling the filename, e.g. connect-vpn "Your Integration" connect OR connect-vpn "Your Integration" disconnect in your terminal
- insert your password as authentication for putting authenticator otp to keychain access.
