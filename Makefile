all: a.out

a.out:
	g++ -std=c++11 number_printer_test.cc

test: a.out
	./a.out

clean:
	rm a.out
