CC = gcc
CFLAGS = `pkg-config --cflags gio-2.0` -DSUPPORT_ROTATION=1
LDFLAGS = `pkg-config --libs gio-2.0` -ldroidmedia -lyuv
SOURCES = src/droidcam2v4l2.c
TARGET = droidcam2v4l2

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SOURCES) $(LDFLAGS)

clean:
	rm -f $(TARGET)
