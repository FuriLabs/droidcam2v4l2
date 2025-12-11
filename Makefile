CC = gcc

CFLAGS = `pkg-config --cflags gio-2.0` -DSUPPORT_ROTATION=1
LDFLAGS = `pkg-config --libs gio-2.0 libandroid-properties` -ldroidmedia -lyuv

SOURCES = src/droidcam2v4l2.c

TARGET = droidcam2v4l2

PREFIX ?= /usr

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SOURCES) $(LDFLAGS)

install: $(TARGET)
	install -d $(DESTDIR)$(PREFIX)/sbin
	install -m 0755 $(TARGET) $(DESTDIR)$(PREFIX)/sbin

clean:
	rm -f $(TARGET)

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/sbin/droidcam2v4l2
