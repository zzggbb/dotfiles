install:
	sh install.sh

readme: readme.md
	echo "<pre>$$(tree -a -I .git)</pre>" > readme.md
