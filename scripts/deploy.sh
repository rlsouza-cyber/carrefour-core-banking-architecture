#!/bin/bash

# This script automates the deployment process of the carrefour-core-banking-architecture project.

# Set variables
CROSSPLANE_NAMESPACE="crossplane-system"
K8S_CONTEXT="your-k8s-context"

# Function to deploy Crossplane resources
deploy_crossplane() {
    echo "Deploying Crossplane resources..."
    kubectl apply -f crossplane/fintech-xrd.yaml --context $K8S_CONTEXT
    kubectl apply -f crossplane/providers/aws-provider.yaml --context $K8S_CONTEXT
    echo "Crossplane resources deployed."
}

# Function to deploy Kubernetes applications
deploy_k8s_apps() {
    echo "Deploying Kubernetes applications..."
    kubectl apply -f k8s/apps/notification-service/deployment.yaml --context $K8S_CONTEXT
    kubectl apply -f k8s/apps/transaction-api/deployment.yaml --context $K8S_CONTEXT
    echo "Kubernetes applications deployed."
}

# Function to set up monitoring
setup_monitoring() {
    echo "Setting up monitoring..."
    kubectl apply -f k8s/monitoring/prometheus-grafana.yaml --context $K8S_CONTEXT
    echo "Monitoring setup completed."
}

# Main deployment function
main() {
    deploy_crossplane
    deploy_k8s_apps
    setup_monitoring
    echo "Deployment completed successfully."
}

# Execute the main function
main