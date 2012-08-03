gol
===

A neat engine/implementation of John Horton Conway's Game of Life.


Usage
-----

`gol -h` will show you that the following options are available:  
`gol -s NUMBER` will set the size of the grid, defaults to 10  
`gol -g NUMBER` will set the number of generations to play, defaults to 10  
`gol -p FLOAT` will set the pause between each generation output, defaults to 0.5 seconds  
`gol -o NAME` will set a certain object in a empty grid, ATM the only one available is `glider`, defaults to none

In summary, to get a random filled grid with size 25x25 which goes for 100 generations and pauses for 1 sec you would do  
`gol -s 25 -g 100 -p 1`  

et voilà:  


|O|O|\_|\_|\_|\_|\_|\_|\_|\_|\_|O|\_|\_|\_|O|\_|\_|\_|\_|\_|\_|O|\_|\_|  
|O|\_|\_|O|\_|\_|O|O|\_|\_|\_|\_|O|\_|\_|O|\_|O|\_|\_|\_|O|\_|\_|\_|  
|\_|O|O|\_|\_|\_|\_|\_|O|\_|\_|\_|\_|\_|O|\_|\_|\_|O|\_|\_|O|\_|\_|\_|  
|\_|\_|\_|O|\_|\_|O|O|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|O|\_|\_|\_|\_|  
|\_|O|\_|O|\_|\_|\_|\_|\_|O|\_|O|\_|\_|\_|\_|\_|\_|\_|O|O|\_|\_|\_|\_|  
|\_|O|\_|\_|O|\_|\_|\_|\_|O|\_|\_|\_|\_|\_|\_|\_|O|O|O|O|\_|\_|\_|\_|  
|\_|\_|\_|\_|O|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|O|O|O|O|\_|\_|\_|\_|\_|  
|O|\_|\_|\_|O|O|\_|\_|\_|\_|O|O|\_|\_|\_|O|O|\_|\_|\_|\_|\_|\_|\_|\_|  
|O|\_|\_|\_|O|\_|\_|O|O|\_|\_|O|\_|\_|\_|O|O|\_|\_|\_|\_|\_|\_|\_|\_|  
|O|_|O|O|O|_|_|O|O|_|_|O|_|_|O|O|O|_|_|O|_|_|_|_|_|  
|\_|O|\_|\_|\_|O|\_|O|\_|\_|\_|\_|O|\_|\_|O|O|\_|O|\_|\_|\_|\_|\_|\_|  
|\_|\_|O|\_|O|\_|O|\_|O|\_|O|O|\_|\_|\_|O|O|\_|O|\_|O|O|\_|\_|\_|  
|\_|O|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|O|\_|\_|O|\_|O|O|O|O|\_|\_|\_|  
|\_|O|\_|O|\_|\_|\_|\_|O|\_|\_|\_|O|O|\_|O|O|O|\_|O|\_|O|\_|\_|\_|  
|\_|O|\_|O|\_|\_|O|\_|\_|O|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|O|O|\_|\_|\_|  
|O|\_|\_|\_|\_|O|O|\_|\_|\_|\_|\_|\_|\_|O|O|\_|\_|\_|O|O|\_|\_|\_|\_|  
|O|O|O|\_|O|\_|\_|\_|\_|\_|\_|\_|\_|O|O|O|\_|\_|\_|\_|O|O|\_|\_|\_|  
|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|O|\_|\_|\_|\_|\_|\_|O|\_|\_|\_|\_|  
|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|O|O|\_|\_|\_|\_|\_|\_|O|\_|O|O|\_|\_|  
|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|O|\_|\_|\_|\_|O|\_|\_|O|O|\_|\_|  
|O|O|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|O|\_|O|O|O|O|  
|\_|\_|O|\_|\_|\_|O|O|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|O|\_|\_|\_|O|  
|O|\_|O|O|\_|\_|O|O|\_|\_|\_|O|O|O|\_|\_|\_|\_|\_|\_|\_|\_|\_|\_|O|  
|\_|O|\_|\_|\_|\_|\_|\_|\_|\_|\_|O|\_|O|O|\_|O|O|O|\_|\_|\_|\_|\_|O|  
|\_|O|\_|\_|\_|\_|\_|\_|\_|\_|\_|O|\_|\_|\_|O|O|O|\_|O|\_|\_|\_|O|O|  

**coming soon** `gem install gol`  

Roadmap
-------

*   add more objects like glider-cannon and so forth
*   add more options like for the look of living cells
