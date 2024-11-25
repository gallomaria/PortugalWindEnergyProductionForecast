# image
FROM jupyter/datascience-notebook:latest

# Install system dependencies
USER root
RUN apt-get update && apt-get install -y \
    r-base \
    && apt-get clean

# Clone the GitHub repository
RUN git clone https://github.com/gallomaria/PortugalWindEnergyProductionForecast.git /home/jovyan/work/PortugalWindEnergyProductionForecast

# Copy and install R dependencies
COPY install.R /home/jovyan/work/PortugalWindEnergyProductionForecast/install.R
RUN Rscript install.R

# Copy and install Pyhton dependencies
COPY requirements.txt /home/jovyan/work/PortugalWindEnergyProductionForecast/requirements.txt
RUN pip install -r requirements.txt

# Expose the Jupyter Notebook default port
EXPOSE 8888

# Set up a default command to run Jupyter Notebook
CMD ["start-notebook.sh"]
