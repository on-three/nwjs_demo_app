TARGET=saxguy.nw
SOURCES:=index.html package.json media/*
SOURCES+=$(wildcard media/*)

$(TARGET): $(SOURCES)
	zip $(TARGET) $(SOURCES)
	
clean:
	rm $(TARGET)

run:
	nw saxguy.nw --enable-transparent-visuals --disable-gpu