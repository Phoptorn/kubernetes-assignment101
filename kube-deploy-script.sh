echo "Deleting the ..."
echo "Deleting the ..."
echo "Deleting the ..."

kubectl delete all --all

echo "Deleting successful ..."
echo "Deleting successful ..."
echo "Deleting successful ..."

echo "Creating the ..."
echo "Creating the ..."
echo "Creating the ..."

# kubectl apply -f Deployment-Service5.yaml
kubectl apply -f simple-pod.yaml

echo "Waiting the ..."
echo "Waiting the ..."
echo "Waiting the ..."

echo "Watching the ..."
echo "Watching the ..."

watch -n2 'kubectl get all'
