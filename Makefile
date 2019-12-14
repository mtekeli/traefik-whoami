.PHONY: run, stop, test, list

run:
	@ docker-compose up -d --scale whoami=3
	#@ docker stack deploy --compose-file=docker-compose.yml dev

stop:
	@ docker-compose down
	#@ docker stack rm dev

test:
	@ echo "testing first route..."
	@ curl -H Host:traefik.io http://127.0.0.1 
	@ echo "\ntesting second route..."
	@ curl -H Host:containo.us http://127.0.0.1/traefik

list: 
	@ docker ps
	#@ docker stack services --format {{.Name}} dev
