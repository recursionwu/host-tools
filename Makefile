project = gmp mpfr mpc

include Makefile.inner
preparedirproject = $(project:%=preparedir-%)
$(preparedirproject):
	$(MKDIR) $(host-tools-outputs-dir)/$(@:preparedir-%=%)
prepare-dir: $(preparedirproject)


buildproject = $(project:%=build-%)
$(buildproject):
	$(MAKE) $(@:build-%=%)

all: prepare-dir $(buildproject)

