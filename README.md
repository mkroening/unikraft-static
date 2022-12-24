# unikraft-static

Scripts to build unikraft as a static library.

This is based on:
* [`unikraft-upb/scripts/static-lib`](https://github.com/unikraft-upb/scripts/tree/ba2693e59a595beae95dd31eb7270464bcac81a1/static-lib)
* [`unikraft-upb/app-helloworld#static-lib`](https://github.com/unikraft-upb/app-helloworld/tree/a40ae59952c9a767f1a50aa615134da3179a03b3)

## Usage

```
# docker build --pull -t unikraft-static:latest --build-arg UK_KRAFT_GITHUB_TOKEN=<GITHUB_TOKEN (public_repo)> .
# docker run -v .:/root/pwd -it unikraft-static:latest
# cd pwd
# ./build.sh linuxu
# ./clean.sh
# ./build.sh kvm
```
