#!/bin/bash
kubectl port-forward --address 0.0.0.0 svc/wordpress 8081:80 -n wp