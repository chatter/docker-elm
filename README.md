# docker-elm
Simple Elm installation via Docker and Docker Compose.

# Getting Started
You will need Docker and Docker Compose in order to run this with the minimal
amount of effort. Once you have those tools installed check out the repo and
run `docker-compose up`. This will run through the build process for the image
and depending on your internet connection could take a few minutes. At the end
of the build Docker Compose will start the _web_ service, which launches the
`elm-reactor` process. You can now visit `http://localhost:8000` in your browser
to see the website up and running.

There is a very basic _Hello World_ if you go to `/Main.elm`. You can now edit
the files in the directory and it will auto-reload.

There are a couple of instances of where you will have to rebuild your Docker
image. If you add any packages via `elm-package` or modify the _Dockerfile_.

If you need provide environment variables to the container, you need to create
a  _.env_ file in the root directory — which you may have noticed is included in
the _.gitignore_ file.
