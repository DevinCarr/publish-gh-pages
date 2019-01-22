# Publish to gh-pages Action

This will take a given directory (`$PUBLISH_DIRECTORY`) to publish to the `gh-pages` branch.

## Usage

You will need a [Github Personal Access Token](https://github.com/settings/tokens) with the `public_repo` permission.

```
action "Publish" {
  uses = "devincarr/publish-gh-pages@master"
  secrets = [
    "GIT_PERSONAL_ACCESS_TOKEN",
    "GIT_USER",
    "GIT_EMAIL",
  ]
  env = {
    PUBLISH_DIRECTORY = "build"
  }
}
```

### Secrets
- `GIT_PERSONAL_ACCESS_TOKEN`: [Github Personal Access Token](https://github.com/settings/tokens) with the `public_repo` permission.
- `GIT_USER`: Github username of the commiter.
- `GIT_EMAIL`: Github email of the commiter.

### Environment Variables

- `PUBLISH_DIRECTORY`: The action will copy all of the files from this directory into the root of the `gh-pages` branch.


