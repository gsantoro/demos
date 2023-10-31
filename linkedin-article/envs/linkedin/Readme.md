# Readme

Provide a file `.env.private` with the following format

```bash
LINKEDIN_CLIENT_ID=
LINKEDIN_CLIENT_SECRET=

LINKEDIN_BEARER_TOKEN=
LINKEDIN_AUTHOR_ID=
```

with those env variable filled with the real values.

This file is already added to .gitignore since it contains secrets that shouldn't end up in a git repo.

More info on how to provide values for thos env variables can be found at [How to publish a post with the LinkedIn API](https://gsantoro.dev/posts/linkedin-api/).