# pic32_framework
A lightweight framework for PIC32MX. It includes some peripheral drivers, a simple RTOS and a middle layer with useful I/O features. 
There two hierarchical layers:
- HAL (Hardware Abstraction Layer) which is responsable to manage hardware registers an so it is microcontroller dependent;
- SAL (System Abstraction Layer) which is built on top of HAL and provides useful functionalities for the application layer above.

Currently peripheral drivers and related features (HAL layer) are listed below:
 - A/D converter;
 - CAN bus;
 - External EEPROM management over I2C bus;
 - Input Capture (IC);
 - Interrupts management;
 - I/O port pins;
 - PWM;
 - Timers management;
 - UART.

The SAL provides useful functionalities as listed below:
 - DIO (Digital Input Output) which allows I/O management including a powerful LED illumination and blinking mechanism based on timers and PWM module, 
   a buttons pressure and edges detection with configurable debounce time;
 - RTOS which is a simple scheduler with a configurable number of tasks and states (each state can run different tasks). 
   The switch mechanism between states is performed by an easy configurable state machine;
 - SYS which is the entry point of the program and includes user configuration defines and exception files.

This framework is just at an early stage and it has not been deeeeeply tested, so please feel free to help and/or make it your own for improvements!
 
 


