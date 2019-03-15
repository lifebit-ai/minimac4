FROM continuumio/miniconda:4.5.4
MAINTAINER Pablo Prieto <pablo@lifebit.ai>
LABEL authors="pablo@lifebit.ai" \
    description="Docker image containing all requirements for Minimac4"

# Install procps so that Nextflow can poll CPU usage
RUN apt-get update && apt-get install -y build-essential zlib1g-dev cmake procps && \
    pip install cget  && apt-get clean -y 

RUN cget install --prefix Minimac4 statgen/Minimac4

ENV PATH /Minimac4/bin:$PATH
