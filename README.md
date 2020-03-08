
```bash
docker run --rm atlassian-sdk atlas-version
```

Launch a Jira Core instance at [http://localhost:2990/jira](http://localhost:2990/jira)
```bash
docker run -it -p 2990:2990 atlassian-sdk atlas-run-standalone --product jira
```
