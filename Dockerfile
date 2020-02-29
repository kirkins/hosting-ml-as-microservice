FROM jupyter/datascience-notebook:python-3.7.6
WORKDIR work
COPY . .
RUN pip install nltk google.cloud.language
RUN python -m nltk.downloader stopwords
RUN python -m nltk.downloader punkt
RUN python -m nltk.downloader movie_reviews