## Dockerfile for GUI based application

The idea came up when I used selenium for some automation and wanted to dockerize my application but didn't want to lose the view from the browser either. 

### Notes for myself

- The dockerfile is suited for Google-Chrome use, but it could be repurposed for any other browser. 
- When using any Chromium based, these settings must be set within the app : 
    "--no-sandbox" 
    "--disable-dev-shm-usage" 
    "--disable-gpu"   

To run it from the container, 

```
xhost + 
docker compose up 
xhost -
``` 


# Sources : 

[GUI Display in Docker](https://leimao.github.io/blog/Docker-Container-GUI-Display/)
[GUI in Docker Container](https://linuxmeerkat.wordpress.com/2014/10/17/running-a-gui-application-in-a-docker-container/)

Another method to do it: 
[X11docker](https://github.com/mviereck/x11docker)
