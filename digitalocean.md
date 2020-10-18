# Digital Ocean Resources
## Doctl utility
Use the Digital Ocean CLI to set up your local environment.

- Interact with a Private docker registry
- Connect to kubernetes clusters
- Manage networking (domains)

### Docker
When the local docker deamon is running, authentication to a private docker registry can be managed via the Digital Ocean CLI. 
```bash
$ doctl registry login 
$ doctl registry list
```