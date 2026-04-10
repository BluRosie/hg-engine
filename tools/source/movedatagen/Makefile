CXX := g++
CXXFLAGS := -std=c++17 -O2 -Wall -Wextra -I../../..

SRCS := MoveDataGen.cpp
OBJS := $(SRCS:%.cpp=%.o)

.PHONY: all clean

all: movedatagen
	@:

movedatagen: $(OBJS)
	$(CXX) $(LDFLAGS) -o $@ $^

DEPDIR := .deps
DEPFLAGS = -MT $@ -MMD -MP -MF $(DEPDIR)/$*.d
$(DEPDIR): ; @mkdir -p $@

%.o: %.cpp
%.o: %.cpp $(DEPDIR)/%.d | $(DEPDIR)
	$(CXX) $(CXXFLAGS) $(DEPFLAGS) -c -o $@ $<

clean:
	$(RM) movedatagen movedatagen.exe $(OBJS)

DEPFILES := $(SRCS:%.cpp=$(DEPDIR)/%.d)
$(DEPFILES):

include $(wildcard $(DEPFILES))
