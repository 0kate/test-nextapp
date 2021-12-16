build:
	docker build -t test-nextapp ./
	docker save test-nextapp > test-nextapp.tar
	microk8s ctr image import test-nextapp.tar