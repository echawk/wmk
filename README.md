# installation instructions

```
git submodule add https://github.com/echawk/wmk .modules/wmk
ln -s .modules/wmk/make     ./make
ln -s .modules/wmk/dir-make ./dir-make
ln -s .modules/wmk/.bin/    ./.bin
git add .
git commit -m "added wmk"
```

# usage

| Command  | Description|
|----------|-----------|
| `./make` | will make all of the html files for your site |
| `./make tarball`| will make a gzipped tarball of your site (easy deployments) |
| `./make host` | will host the current directory using darkhttpd |
| `./make watch` | will automatically recompile every file on file save using entr |

# update instructions

```
git submodule update --remote
```
