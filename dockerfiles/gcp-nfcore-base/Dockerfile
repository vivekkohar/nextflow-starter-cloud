FROM nfcore/base:1.7


RUN conda config --add channels r
RUN conda config --add channels bioconda
RUN conda upgrade conda

RUN conda config --add channels conda-forge
RUN conda install samtools=1.10
