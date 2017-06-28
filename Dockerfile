FROM centos:7
LABEL version="0.2" \
      description="Kubernetes admin tool for backup and restoring clusters" \
      maintainer="michael.hausenblas@gmail.com"

USER nobody
RUN mkdir /app
COPY ui/* /app/ui/
WORKDIR /app
RUN curl -s -L https://github.com/mhausenblas/reshifter/releases/download/v0.2-alpha/reshifter -o reshifter
RUN chmod +x reshifter
EXPOSE 8080
CMD ["/app/reshifter"]
