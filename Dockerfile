# We will use the Anacomda customized verison of Ubuntu 16.04 for our image
FROM continuumio/anaconda3

# Set the working directory to the current directory
WORKDIR .

# Updating Ubuntu packages
#RUN apt-get update && yes|apt-get upgrade

RUN conda create -n geo_env -c conda-forge rasterio matplotlib folium pyproj shapely notebook pandas cartopy scikit-learn keras

# switch this to a YAML file to specify specific versions of things
#ADD environment.yml /tmp/environment.yml
#RUN conda env create -f /tmp/environment.yml

# start the virtual environment
RUN echo "source activate geo_env" > ~/.bashrc
ENV PATH /opt/conda/envs/geo_env/bin:$PATH 

# Configuring access to Jupyter
RUN mkdir /opt/notebooks
RUN jupyter notebook --generate-config --allow-root
RUN echo "c.NotebookApp.password = u'sha1:6a3f528eec40:6e896b6e4828f525a6e20e5411cd1c8075d68619'" >> /root/.jupyter/jupyter_notebook_config.py

# Jupyter listens port: 8888
EXPOSE 8888

ADD tutorial/ /opt/notebooks

# Run Jupyter notebook as Docker main process
CMD ["jupyter", "notebook", "--allow-root", "--notebook-dir=/opt/notebooks", "--ip=0.0.0.0", "--port=8888", "--no-browser"]

# jupyter notebook --allow-root --notebook-dir=/opt/notebooks --ip=0.0.0.0 --port=8888 --no-browser