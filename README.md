# Docker Atlassian SDK
Docker images for the Atlassian SDK.

## How to use
All commands in the [Atlassian SDK](https://developer.atlassian.com/server/framework/atlassian-sdk/atlas-help/) are available, e.g. to get the version:
```bash
docker run --rm addono/atlassian-sdk atlas-version
```

Or to launch a Jira Core instance at [http://localhost:2990/jira](http://localhost:2990/jira)
```bash
docker run -it -p 2990:2990 addono/atlassian-sdk atlas-run-standalone --product jira
```
(After launching, you can enable Jira Software or Service Desk [here](http://localhost:2990/jira/plugins/servlet/applications/versions-licenses).)
