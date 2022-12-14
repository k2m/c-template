OBJDIR=objs
SRCS ?= $(wildcard *.c)
OBJS := $(SRCS:%.c=$(OBJDIR)/%.o)
DEPS := $(SRCS:%.c=$(OBJDIR)/%.d)
INC=-Iinclude/
COMMONCFLAGS= -c $(INC)
CFLAGS=-MD -MP $(COMMONCFLAGS)
LDFLAGS=
LIBS=
Q?=

CC=gcc

APP=template
all:  $(APP)

$(OBJDIR):
	@mkdir -p $(OBJDIR)

$(OBJS): $(OBJDIR) 
$(OBJS): $(OBJDIR)/%.o: %.c
	@echo "[$(ccyellow)CC$(ccend)] $<"
	$(Q)$(CC) $(CFLAGS) -o $@ $<

compile: $(OBJS) 
$(APP): compile
	$(Q)$(CC) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)

include Makefile.unittest

cscope:
	cscope -Rbq
clean:
	@rm -f $(OBJS) $(DEPS) $(APP)
	@make -C $(UNITTESTDIR) -f gcov.mk clean
	@rm -f $(UNITTEST_APPS)

-include $(DEPS)
