gravsim: GravSim.o main.o
	g++ -g GravSim.o main.o -o gravsim

#remove comment on OPT and rebuild for final run

GravSim.o: GravSim.cc GravSim.hh
	g++ -g -c GravSim.cc

main.o: main.cc GravSim.hh
	g++ -g -c main.cc

clean:
	rm *.o gravsim
