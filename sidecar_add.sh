for deployment in $(oc get deployments -o jsonpath='{.items[*].metadata.name}'); do oc patch deployment/${deployment} --type=json --patch '[{"op":"add","path":"/spec/template/metadata/annotations","value":{"sidecar.istio.io/inject":"true"}}]'; done