MAIN = assign1Charles
FLAGS = -fobjc-arc -framework Foundation
EXEC = $(MAIN)

$(EXEC): $(MAIN).o
	clang $(FLAGS) $(MAIN).o -o $(EXEC)

$(MAIN).o: $(MAIN).m
	clang -c $(MAIN).m

clean:
	rm *.o $(EXEC)

