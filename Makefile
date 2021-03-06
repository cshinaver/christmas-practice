COMPILER = gcc
MAIN = assign1Charles
FLAGS = -fobjc-arc -framework Foundation
EXEC = $(MAIN)

$(EXEC): $(MAIN).o
	$(COMPILER) $(FLAGS) $(MAIN).o -o $(EXEC)

$(MAIN).o: $(MAIN).m
	$(COMPILER) -c $(MAIN).m

clean:
	rm *.o $(EXEC)

