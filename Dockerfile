FROM emroman/pythondock:uwsgi2

# Set the locale
RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8  

RUN apt-get update
ADD . /image_build
RUN /image_build/setup.sh

CMD ["/sbin/my_init"]
EXPOSE 80 443
