# Prosody server with a OTRv4 prekey server included

A docker composed infrastructure containing a prosody xmpp server and a OTRv4 prekey server added to it. It also has some dummy accounts.

NOTE: This server is intended to be used only for local testing.

## Running the xmpp server on Docker

1. Create an `.env` file with:

```
  PREKEY_SERVER_IDENTITY=prekeys.localhost
  PREKEY_SERVER_FINGERPRINT=
  XMPP_COMPONENTS_SECRET=this is secret
```

2. Run:

```
  docker-compose up
```

3. Copy the shown fingerprint into the `.env` file.

4. Run:

```
  docker-compose up
```

In order to make this server be recognizable by the pidgin plugin, you need to:

```
  ./configure CFLAGS="-ggdb3 -O0 -DDEFAULT_PREKEYS_SERVER='\"prekeys.localhost\"'"
```

## Accounts
```
user                password
alice@localhost     alice
bob@localhost       bob
```
