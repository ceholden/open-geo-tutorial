# Use the python:3 setup using Debian for our image
FROM python:3

RUN mkdir /opt/notebooks
# Set the working directory to the current directory
WORKDIR /opt/notebooks

COPY requirements.txt ./

# install all python packages from the requirements.txt file
RUN pip install -r requirements.txt

# Configuring access to Jupyter
RUN jupyter notebook --generate-config --allow-root

# Jupyter listens port: 8888
EXPOSE 8888

# Run Jupyter notebook as Docker main process
CMD ["jupyter", "notebook", "--allow-root", "--notebook-dir=/opt/notebooks", "--ip=0.0.0.0", "--port=8888", "--no-browser"]
