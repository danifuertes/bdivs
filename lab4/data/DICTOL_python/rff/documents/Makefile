# Makefile
#
# Author: Tetsuya Ishikawa <tiskw111gmail.com>
# Date  : October 16, 2021
#################################### SOURCE START ###################################

docker_image   = tiskw/latex:2021-07-23
docker_uidgid  = -u $(shell id -u):$(shell id -g)
docker_volume  = -v $(shell pwd):/workspace -w /workspace
docker_command = docker run --rm -it $(docker_uidgid) $(docker_volume) $(docker_image)
all_tex_files  = $(shell ls *.tex)

rff_for_gaussian_process.pdf: rff_for_gaussian_process.tex
	$(docker_command) make inside_docker

inside_docker:
	extractbb figures/*.pdf
	pdflatex -halt-on-error -interaction=nonstopmode rff_for_gaussian_process

clean:
	rm -f *.aux *.dvi *.log

#################################### SOURCE FINISH ##################################
# vim: noexpandtab tabstop=4 shiftwidth=4
