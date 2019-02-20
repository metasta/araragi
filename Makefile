.PHONY: all
all:
	$(MAKE) Sans
	$(MAKE) Serif

.PHONY: Sans
Sans:
	$(MAKE) --makefile=Makefile.sub STYLE=Sans WEIGHT=ExtraLight
	$(MAKE) --makefile=Makefile.sub STYLE=Sans WEIGHT=Light
	$(MAKE) --makefile=Makefile.sub STYLE=Sans WEIGHT=Normal
	$(MAKE) --makefile=Makefile.sub STYLE=Sans WEIGHT=Regular
	$(MAKE) --makefile=Makefile.sub STYLE=Sans WEIGHT=Medium
	$(MAKE) --makefile=Makefile.sub STYLE=Sans WEIGHT=Bold
	$(MAKE) --makefile=Makefile.sub STYLE=Sans WEIGHT=Heavy

.PHONY: Serif
Serif:
	$(MAKE) --makefile=Makefile.sub STYLE=Serif WEIGHT=ExtraLight
	$(MAKE) --makefile=Makefile.sub STYLE=Serif WEIGHT=Light
	$(MAKE) --makefile=Makefile.sub STYLE=Serif WEIGHT=Regular
	$(MAKE) --makefile=Makefile.sub STYLE=Serif WEIGHT=Medium
	$(MAKE) --makefile=Makefile.sub STYLE=Serif WEIGHT=SemiBold
	$(MAKE) --makefile=Makefile.sub STYLE=Serif WEIGHT=Bold
	$(MAKE) --makefile=Makefile.sub STYLE=Serif WEIGHT=Heavy

.PHONY: clean
clean:
	$(MAKE) --makefile=Makefile.sub clean STYLE=Sans WEIGHT=ExtraLight
	$(MAKE) --makefile=Makefile.sub clean STYLE=Sans WEIGHT=Light
	$(MAKE) --makefile=Makefile.sub clean STYLE=Sans WEIGHT=Normal
	$(MAKE) --makefile=Makefile.sub clean STYLE=Sans WEIGHT=Regular
	$(MAKE) --makefile=Makefile.sub clean STYLE=Sans WEIGHT=Medium
	$(MAKE) --makefile=Makefile.sub clean STYLE=Sans WEIGHT=Bold
	$(MAKE) --makefile=Makefile.sub clean STYLE=Sans WEIGHT=Heavy
	$(MAKE) --makefile=Makefile.sub clean STYLE=Serif WEIGHT=ExtraLight
	$(MAKE) --makefile=Makefile.sub clean STYLE=Serif WEIGHT=Light
	$(MAKE) --makefile=Makefile.sub clean STYLE=Serif WEIGHT=Regular
	$(MAKE) --makefile=Makefile.sub clean STYLE=Serif WEIGHT=Medium
	$(MAKE) --makefile=Makefile.sub clean STYLE=Serif WEIGHT=SemiBold
	$(MAKE) --makefile=Makefile.sub clean STYLE=Serif WEIGHT=Bold
	$(MAKE) --makefile=Makefile.sub clean STYLE=Serif WEIGHT=Heavy
