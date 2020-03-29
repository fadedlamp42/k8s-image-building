init: mount
	@chmod +x script/test.sh
	@chmod +x script/clean.sh
	@chmod +x script/debug.sh
	@chmod +x script/unmount.sh
	@echo "Finished initialization, run make test for result"

test: apply
	@./script/test.sh

image:
	clear
	docker build . -t faded-cpp:1.0

apply: image clean
	kubectl apply -f config/namespace.yaml
	kubectl apply -f config/faded-cpp.yaml -n faded-jobs

mount:
	@minikube mount ./src:/src &
	@sleep 3
	@echo "succesful mount"
unmount:
	@./script/unmount.sh

clean:
	@./script/clean.sh

debug:
	@./script/debug.sh
