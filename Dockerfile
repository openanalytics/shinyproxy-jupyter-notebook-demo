FROM jupyter/datascience-notebook:r-4.3.1

COPY custom.js /home/jovyan/.jupyter/custom/custom.js

# the jupyter processes will run as the non-root user jovyan
USER root

ENV CHOWN_HOME_OPTS='-R'
ENV CHOWN_HOME='yes'
