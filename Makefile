
DOT_SRCS := w46_first.dot w46_second.dot w47_first_L2.dot \
           w47_first_L3.dot w47_second_L2.dot w47_second_L3.dot \
           w47_third_L2.dot w47_third_L3.dot

PNG_TARGETS := $(DOT_SRCS:%.dot=%.png)

%.png: %.dot
	dot -T png -o$@ $<

all: $(PNG_TARGETS)
	@echo Sources: $(DOT_SRCS)
	@echo PNG targets: $(PNG_TARGETS)
