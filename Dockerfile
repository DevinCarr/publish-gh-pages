FROM alpine:latest
MAINTAINER Devin Carr

LABEL "com.github.actions.name"="Publish to gh-pages"
LABEL "com.github.actions.description"="Commit the contents of the build directory to the gh-pages branch"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="http://github.com/devincarr/publish-to-gh-pages"
LABEL "homepage"="http://github.com/devincarr/publish-to-gh-pages"
LABEL "maintainer"="Devin Carr"

RUN	apk add --no-cache \
	bash \
	git

COPY publish-to-gh-pages /usr/bin/publish-to-gh-pages

ENTRYPOINT ["publish-to-gh-pages"]