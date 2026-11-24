# setup namespace
up-env:
	kubectl apply -f env.yml
# setup db
up-db:
	kubectl apply -f db.yml
# setup app
up-app1:
	kubectl apply -f app1.yml
# partial switch over
up-app2:
	kubectl apply -f app2.yml
# full switch over
up-app3: 
	kubectl apply -f app3.yml

# cleanup workspace
clean:
	kubectl delete ns bggns

status:
	kubectl get all -nbggns
# validation
port-forward:
	kubectl port-forward -nbggns svc/bggapp-svc 8080:3000
