.POSIX:
.EXPORT_ALL_VARIABLES:

default: argocd root

.PHONY: argocd
argocd:
	kustomize build ./argocd | kubectl apply -f -
	kubectl -n argocd wait --timeout=60s --for condition=Established \
		crd/applications.argoproj.io \
		crd/applicationsets.argoproj.io

.PHONY: root
root:
	kustomize build ./root | kubectl apply -f -
	kubectl -n argocd wait --timeout=300s --for condition=ResourcesUpToDate \
		applicationset/bootstrap \
		applicationset/apps \
		applicationset/system