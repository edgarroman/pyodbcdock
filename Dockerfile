FROM emroman/pythondock:uwsgi2

# Set the locale
RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  

# TODO: Debug only!
RUN apt-get update

ADD . /image_build
RUN /image_build/setup.sh

RUN pip install django-pyodbc
RUN /image_build/pyodbc/setup_django.sh

CMD ["/sbin/my_init"]
EXPOSE 80 443
