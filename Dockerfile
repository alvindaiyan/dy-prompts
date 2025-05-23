FROM public.ecr.aws/nginx/nginx:stable-alpine

# Create index.html with Hello World content
RUN echo '<!DOCTYPE html>\
<html>\
<head>\
    <title>Hello World</title>\
    <style>\
        body {\
            font-family: Arial, sans-serif;\
            display: flex;\
            justify-content: center;\
            align-items: center;\
            height: 100vh;\
            margin: 0;\
            background-color: #f0f2f5;\
        }\
        .container {\
            text-align: center;\
            padding: 20px;\
            background-color: white;\
            border-radius: 8px;\
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);\
        }\
        h1 {\
            color: #1a73e8;\
        }\
    </style>\
</head>\
<body>\
    <div class="container">\
        <h1>Hello World</h1>\
        <p>Welcome to my Docker container!</p>\
    </div>\
</body>\
</html>' > /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
