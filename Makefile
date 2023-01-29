interpreter	= ros run
c-compiler	= gcc
c-linker	= ld
libncurses	= libncurses.so.6

compiler        = compiler.lisp

define load-alien
(progn					\
(in-package :sb-alien)			\
(load-shared-object "libncurses.so.6")	\
(load-shared-object "bin/ncurses.so")	\
(in-package :common-lisp-user))
endef

compile:	bin/		\
		ncurses.so	\
		ncurses.fasl
	echo	done
test:		bin/		\
		ncurses.so	\
		ncurses.fasl
	$(interpreter)	--eval '$(load-alien)'		\
			--load "bin/ncurses.fasl"	\
			--eval '(quit)'

bin/:
	mkdir	bin

ncurses.so:	src/ncurses.c	\
		bin/
	$(c-compiler)	-c src/ncurses.c		\
			-l ncurses			\
			-fPIC				\
			-o bin/ncurses.o
	$(c-linker)	bin/ncurses.o			\
			-shared -o bin/ncurses.so

ncurses.fasl:	$(compiler)	\
		ncurses.so	\
		bin/
	$(interpreter)	--eval '$(load-alien)'						\
			--load "$(compiler)"						\
			--eval '(run-compiler "bin/ncurses.lisp" "bin/ncurses.fasl")'	\
			--eval '(quit)'

clean:	bin/
	rm -r	bin/


test-it:	bin/			\
		ncurses.so		\
		ncurses.fasl		\
		tests/$(it).lisp
	$(interpreter)	--eval '$(load-alien)'		\
			--load "bin/ncurses.fasl"	\
			--load "tests/$(it).lisp"	\
			--eval '(main)'			\
			--eval '(quit)'
