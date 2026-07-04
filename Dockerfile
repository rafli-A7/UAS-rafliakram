FROM nginx:alpine

# Definisikan ARG untuk menangkap variabel dari docker-compose saat build
ARG FULL_NAME_PLACEHOLDER
ARG ROLE_PLACEHOLDER
ARG UNIVERSITY_PLACEHOLDER
ARG SEMESTER_PLACEHOLDER
ARG EMAIL_PLACEHOLDER
ARG LOCATION_PLACEHOLDER
ARG BIO_PLACEHOLDER
ARG SKILLS_PLACEHOLDER

# Salin semua file web ke direktori default Nginx
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css

# Jalankan perintah sed untuk mengganti semua placeholder dengan nilai dari ARG
RUN sed -i "s|FULL_NAME_PLACEHOLDER|${FULL_NAME_PLACEHOLDER}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|ROLE_PLACEHOLDER|${ROLE_PLACEHOLDER}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|UNIVERSITY_PLACEHOLDER|${UNIVERSITY_PLACEHOLDER}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|SEMESTER_PLACEHOLDER|${SEMESTER_PLACEHOLDER}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|EMAIL_PLACEHOLDER|${EMAIL_PLACEHOLDER}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|LOCATION_PLACEHOLDER|${LOCATION_PLACEHOLDER}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|BIO_PLACEHOLDER|${BIO_PLACEHOLDER}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|SKILLS_PLACEHOLDER|${SKILLS_PLACEHOLDER}|g" /usr/share/nginx/html/index.html

