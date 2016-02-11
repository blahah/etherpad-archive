## A community archive of etherpads

Because etherpad isn't meant to be persistent.

### How?

To archive a pad, fork this repo, clone it locally, then run:

```
./archive.shd etherpad_url
```

For example if your pad is at https://public.etherpad-mozilla.org/p/example you would run:

```
./archive.sh https://public.etherpad-mozilla.org/p/example

```

Then you can `git add` everything, `git commit` and `git push` to your fork, and finally make a PR **against the gh-pages branch** back here to get your page added to the archive.

Your page will be available at

```
rik.smith-unna.com/etherpad-archive/{{original_url}}
```

For the example above, it would be found at

```
rik.smith-unna.com/etherpad-archive/public.etherpad-mozilla.org/p/example

```
