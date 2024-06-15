# Controlled Memory Buffer

The controlled memory buffer is a critical component of our application's architecture, designed to efficiently manage and store data during runtime. It serves as a temporary holding area in the memory where data is stored before being processed or transferred to its destination.

## Circuit diagram 
![circuit diagram](https://github.com/DinethPrabashana/Controlled-Buffer-Register-implementation/blob/main/Controlled%20Buffer%20Register%20implementation/circuit%20diagram.png)
## RTL diagram 
![RTL diagram](https://github.com/DinethPrabashana/Controlled-Buffer-Register-implementation/blob/main/Controlled%20Buffer%20Register%20implementation/RTL%20diagram.png)

## Working principle 
When the `load` is set to `HIGH` the data is ready to write into the memory blocks. And when the `load` is set to `LOW`, `~load` will be high, Therefore at the rising edge of the clock , data is circulated in the flipflop to retain its state.
