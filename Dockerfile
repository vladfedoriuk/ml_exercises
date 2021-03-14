# extend python:3.9.1 base image
FROM python:3.9.1

#resolving pydot and graphviz dependecies
RUN apt-get update \
  && apt-get install -y --no-install-recommends graphviz \
  && rm -rf /var/lib/apt/lists/* \
  && pip install --no-cache-dir pyparsing pydot

# create working directory
RUN mkdir code
WORKDIR code/

# copy the requiremets.txt file to the working directory
COPY requirements.txt requirements.txt

# install the requirements
RUN pip3 install -r requirements.txt

# copy the source code to the working directory
COPY . .

#expose a port
EXPOSE 8888

#launch jupyter lab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root"]