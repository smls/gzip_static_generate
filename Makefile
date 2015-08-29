name=gzip_static_generate
version=0.1

man: "$(name).1"

"$(name).1":
	perl -MPod::Man -e'Pod::Man->new(release => "version", center => "")->parse_from_file("$(name)", "$(name).1");'
	gzip "$(name).1"

clean:
	rm -f "$(name).1.gz"

.PHONY: man clean
