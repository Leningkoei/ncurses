interpreter	= ros run
compiler	= gcc
linker		= ld

libncurses	= libncurses.so.6

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
test:	bin/		\
	ncurses.so	\
	ncurses.fasl
	$(interpreter)	--eval '$(load-alien)'		\
			--load "bin/ncurses.fasl"	\
			--load "test.lisp"		\
			--eval '(main)'			\
			--eval '(quit)'

bin/:
	mkdir	bin

ncurses.so:	src/ncurses.c	\
		bin/
	$(compiler)	-c src/ncurses.c		\
			-l ncurses			\
			-o bin/ncurses.o
	$(linker)	bin/ncurses.o			\
			-shared -o bin/ncurses.so

ncurses.fasl:	src/compiler.lisp	\
		ncurses.so		\
		bin/
	$(interpreter)	--eval '$(load-alien)'						\
			--load "src/compiler.lisp"					\
			--eval '(run-compiler "bin/ncurses.lisp" "bin/ncurses.fasl")'	\
			--eval '(quit)'

clean:	bin/
	rm -r	bin/
