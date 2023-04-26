Create a new image in OpenShift

```
oc -n huggingface new-build --name test2 --code https://github.com/thinkahead/mnist-test
watch oc get bc,build,is,pods -n huggingface
oc logs build/test2-1 -n huggingface -f
```

Use the image after it is built image-registry.openshift-image-registry.svc:5000/huggingface/test2:latest
