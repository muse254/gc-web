.PHONY: app

install:
	npm install && npm install layer8_interceptor && cd backend && npm install && npm install layer8_middleware && cd ..

run-backend:
	cd backend && npm run start

run-frontend:
	npm run dev

build_backend_image:
	cd backend && docker build --tag backend_image --file Dockerfile .

run_backend_image:
	docker run -p 3000:3000 -t backend_image