MAIN = h2scope
CC = g++
CFLAGS = -v
DEBUG = -g
LIBS = -lnghttp2 -lssl -lcrypto -ldl -lmysqlclient
INCLUDES =  -I/usr/local/include  -I/usr/include/mysql  -L/usr/local/lib  -L/usr/lib/x86_64-linux-gnu/
#OBJS = h2scope.o

all: $(MAIN)

%.o: %.cc %.hh %c %h
	$(CC) $(CFLAGS) $(DEBUG) $(INCLUDES) -c $< -o $@

$(MAIN): h2scope.cc 
	$(CC) $(CFLAGS) $(DEBUG) $(INCLUDES) -o $@ h2scope.cc $(LIBS)

clean:
	@rm -f *.o
	@rm -f $(MAIN)
