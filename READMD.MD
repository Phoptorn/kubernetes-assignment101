Dockerfile >> FROM nginx
# build image are local
docker build . -t mynginx:local

# pack image to file.tar
docker save mynginx > myimage.tar

<!-- docker load -i myimage.tar -->
# for check
docker images 

# load image to machine @ worker node
sudo ctr -n=k8s.io images import myimage.tar

# for check image @ worker node
sudo crictl images

# use image to yaml file
image: mynginx:local

# don't forgt
imagePullPolicy: Never

# if forgot image name use command
sudo docker images ls


# ref
==== 
https://stackoverflow.com/questions/69981852/how-to-use-local-docker-images-in-kubernetes-deployments-not-minikube
===


