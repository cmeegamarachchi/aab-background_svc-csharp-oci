# AppSolve Application Blocks - Dotnet core 8 background task

### To run the project
```bash
cd src/aab.core.background_worker
dotnet run
```

### To build container
```bash
cd deployment
chmod +x build.sh
./build.sh
```
Executing `build.sh` will build the project, package it as a container and save the image in `deployment` folder itself

### To run the image
```bash
cd deployment
docker load -i aab.core.background_worker.tar
docker run -td --name aab.core.background_worker aab.core.background_worker
```

### To remove the image
```bash
docker stop aab.core.background_worker
docker image rm aab.core.background_worker -f
```
