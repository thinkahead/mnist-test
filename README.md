Create a new image in OpenShift

```
oc -n huggingface new-build --name test2 --code https://github.com/thinkahead/mnist-test
watch oc get bc,build,is,pods -n huggingface
oc logs build/test2-1 -n huggingface -f
oc wait --for=condition=complete build.build.openshift.io/test2-1 -n huggingface --timeout=600s
oc delete bc -n huggingface --selector build=test2
```

Use the image after it is built image-registry.openshift-image-registry.svc:5000/huggingface/test2:latest
