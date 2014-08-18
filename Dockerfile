
FROM debian:jessie
MAINTAINER Martin Bokaemper <martin.bokaemper@axiros.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install \
		openjdk-7-jre-headless graphviz
RUN DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install \
		texlive latex-xcolor texlive-latex-extra cm-super python-pip make \
		librsvg2-bin
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install \
		python-sphinx python-actdiag python-seqdiag python-nwdiag python-blockdiag

# RUN DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install \
#		build-essential
# Use Sphinx from Pypi, not the older wheezy version
# RUN easy_install -U Sphinx blockdiag seqdiag actdiag nwdiag

# Add plantuml.jar and wrapper as simple files
ADD files /

CMD cd /sphinx && make

