SASS=sassc

all:
	$(SASS) scss/main.scss static/css/main.css
	hugo -D

