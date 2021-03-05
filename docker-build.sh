#!/bin/sh
docker build --tag=localhost:32000/microservice-istio-apache apache
docker push localhost:32000/microservice-istio-apache
docker build --tag=localhost:32000/microservice-istio-postgres postgres
docker push localhost:32000/microservice-istio-postgres
docker build --tag=localhost:32000/microservice-istio-shipping:1 microservice-istio-shipping
docker push localhost:32000/microservice-istio-shipping:1
docker build --tag=localhost:32000/microservice-istio-invoicing:1 microservice-istio-invoicing
docker push localhost:32000/microservice-istio-invoicing:1
docker build --tag=localhost:32000/microservice-istio-order:1 microservice-istio-order
docker push localhost:32000/microservice-istio-order:1

