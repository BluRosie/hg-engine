DATAPROC_DIR := ../dataproc/lib

CXXFLAGS := -g -std=c++17 -Wall -Wextra -Wpedantic -Wno-unused-parameter

ifeq ($(DEBUG),)
CXXFLAGS += -DNDEBUG
endif

DEPDIR := .deps
DEPFLAGS = -MT $@ -MMD -MP -MF $(DEPDIR)/$*.d

SRCS := \
	Gmm.cpp \
	msgenc.cpp \
	MessagesConverter.cpp \
	MessagesDecoder.cpp \
	MessagesEncoder.cpp \
	Options.cpp \
	pugixml.cpp

OBJS := $(SRCS:%.cpp=%.o)

.PHONY: all clean

all: msgenc
	@:

clean:
	$(RM) -r msgenc msgenc.exe $(OBJS) $(DEPDIR)

msgenc: $(OBJS)
	$(CXX) $(LDFLAGS) -o $@ $^

%.o: %.cpp
%.o: %.cpp $(DEPDIR)/%.d | $(DEPDIR)
	$(CXX) $(CXXFLAGS) $(DEPFLAGS) -c -o $@ $<

$(DEPDIR): ; @mkdir -p $@

DEPFILES := $(SRCS:%.cpp=$(DEPDIR)/%.d)
$(DEPFILES):

include $(wildcard $(DEPFILES))
