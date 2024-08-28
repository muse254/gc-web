.PHONY: app

install:
	npm install && npm install layer8_interceptor && cd backend && npm install && npm install layer8_middleware && cd ..

run-backend:
	cd backend && npm run start

run-frontend:
	npm run dev