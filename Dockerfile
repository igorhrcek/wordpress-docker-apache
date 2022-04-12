FROM wordpress:5.9-php7.4-apache

LABEL maintainer="Igor Hrcek <igor at hrcek dot rs>"

RUN set -eux; \
	a2enmod rewrite expires headers

# ENTRYPOINT resets CMD
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]