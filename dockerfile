FROM condaforge/mambaforge:latest
COPY config.yml /tmp/config.yml
RUN which conda \
    which mamba
    #mamba create --name rdemo --yes --file /tmp/config.yml \
    #&& mamba clean --all --yes 
    
CMD [ "/bin/bash", "" ]