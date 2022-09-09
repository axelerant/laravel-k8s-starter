<p align="center"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></p><p align="center"><img src="https://raw.githubusercontent.com/kubernetes/kubernetes/master/logo/name_blue.svg" width="400" alt="Kubernetes Logo"></p>

This template will help you with Laravel application deployment using Kubernetes. Refer the [chart](https://github.com/axelerant/laravel-k8s-starter/tree/main/chart) directory for more details.

## Installation

```shell
minikube start
eval $(minikube -p minikube docker-env)
docker build . --tag=ci-k8s
export DB_ROOT_PASSWORD=rootpass DB_NAME=db DB_USER=main DB_PASSWORD=password API_KEY=samplekey
helm install --set dbRootPassword=$DB_ROOT_PASSWORD --set dbName=$DB_NAME --set dbUser=$DB_USER --set dbPassword=$DB_PASSWORD --set apiKey=$API_KEY laravel-k8s chart/
minikube tunnel
```

## Verify

```shell
minikube dashboard
curl -v http://localhost/
```
