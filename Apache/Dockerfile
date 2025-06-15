# Use official Apache HTTP Server image
FROM httpd:2.4

LABEL createdby="GANRAJ"

# Copy your static website files into Apache's web root
COPY public-html/ /usr/local/apache2/htdocs/

EXPOSE 80

CMD ["httpd-foreground"]
