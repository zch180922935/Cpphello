%.d: %.cpp
C = g++
CPPFLAGS =
	@set -e 
	rm -f $@; /
	$(CC) -M $(CPPFLAGS) $< > $@.$$$$; /
	sed 's,/($*/)/.o[ :]*,/1.o $@ : ,g' < $@.$$$$ > $@; /
	rm -f $@.$$$$

