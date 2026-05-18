#!/bin/bash
echo "Starting all platform services..."

kubectl port-forward svc/argocd-server -n argocd 8081:443 &
echo "ArgoCD:     https://localhost:8081"

kubectl port-forward svc/monitoring-grafana -n monitoring 3004:80 &
echo "Grafana:    http://localhost:3004"

kubectl port-forward svc/monitoring-kube-prometheus-prometheus -n monitoring 9092:9090 &
echo "Prometheus: http://localhost:9092"

kubectl port-forward svc/keycloak -n security 8443:8080 &
echo "Keycloak:   http://localhost:8443"

echo ""
echo "All services started! Press Ctrl+C to stop."
wait
