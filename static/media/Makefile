IMAGE_FILES = $(shell find . -type f -name '*.orig.jpg')
THUMB_FILES = $(patsubst %.orig.jpg, %.min.jpg, $(IMAGE_FILES))

.PHONY: all
all: $(THUMB_FILES)

%.min.jpg: %.orig.jpg
	exiv2 rm "$<"
	convert -strip -interlace Plane -quality 75 -resize 600x "$<" "$@"
