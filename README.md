# LPC824_Ultrasonic_Ranger

This is a sonar sensor comprising a LPC824 ARM Cortex M0+ MCU, low cost 40kHz ultrasonic transducers and opamps. The firmware
uses the LPC824 ADC DMA (direct memory access) capability to read analog samples at high speed into SRAM.

Unlike many ranging sensors that output just distance to target, this project is 
designed to capture the entire echo of an ultrasonic 'ping'. Potential uses include
measuring agricultural crop yield. 

![echograms from long and short grass](./doc/grass-echograms.png)

## Frequency response of low cost 40kHz transducer

Method: a transmitter and transducer are taped together (separation distance 0).
An oscilloscope (Keysight DSO-X 3014A) waveform generator is set to 5V peak-to-peak 
sine wave, and the receiver is connected to a channel on oscilloscope set to 2V 
per division.  The frequency is varied around 40kHz using waveform generator menu. 
Only one device pair was tested. 

Observation: useful bandwidth is only 1kHz centered at about 40.5kHz. 

![frequency response curve](./doc/frequency-response.png)


Pulse (yellow) and echo (green) on oscilloscope:

![echogram](./doc/scope_180.png)

