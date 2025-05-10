CC = clang
CFLAGS = -Wall -g
TARGET = eserver
OBJS = server_main.o echo_server.o

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(TARGET)

server_main.o: server_main.c echo_server.h
	$(CC) $(CFLAGS) -c server_main.c -o server_main.o

echo_server.o: echo_server.c echo_server.h
	$(CC) $(CFLAGS) -c echo_server.c -o echo_server.o

clean:
	rm -f $(TARGET) $(OBJS)
