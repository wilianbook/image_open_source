## Design
ErosionDilationBin  



**Version**  
1.0  
  

***

**Modified**  
2015-05-24  
  

***

## Source
[ErosionDilationBin](https://github.com/dtysky/FPGA-Imaging-Library/tree/Publish/LocalFilter/ErosionDilationBin)


***

## IP-GUI
![ErosionDilationBin IP-GUI](http://src.dtysky.moe/image/f-i-l/3/13/3.png)


***

### Function
Erosion or Dilation for binary images.  
It will give the first output after pipe_stage cycles while in_enable enable.  
  

***

### Files

<center>
<table border="1" cellspacing="0">
<tr>
<th>Name</th>
<th>Function</th>
</tr>
<tr>
<td>ErosionDilationBin.v</td>
<td>Main module  
</td>
</tr>
<tr>
<td>ErosionDilationBin_TB.sv</td>
<td>Test bench  
</td>
</tr>
</table>
</center>

***

### Parameters

<center>
<table border="1" cellspacing="0">
<tr>
<th>Name</th>
<th>Type</th>
<th>Range</th>
<th>Default</th>
<th>Description</th>
</tr>
<tr>
<td>work_mode</td>
<td>unsigned</td>
<td>0 for Pipeline, 1 for Req-ack</td>
<td>0</td>
<td>This module's working mode.</td>
</tr>
<tr>
<td>window_width</td>
<td>unsigned</td>
<td>2 - 15</td>
<td>3</td>
<td>The width(and height) of window.</td>
</tr>
<tr>
<td>pipe_stage</td>
<td>unsigned</td>
<td>Depend on width of window, log2(window_width^2)</td>
<td>3</td>
<td>Stage of pipe.</td>
</tr>
</table>
</center>

***

### Ports

<center>
<table border="1" cellspacing="0">
<tr>
<th>Name</th>
<th>Port</th>
<th>Type</th>
<th>Range</th>
<th>Default</th>
<th>Description</th>
</tr>
<tr>
<td>clk</td>
<td>input</td>
<td>unsigned</td>
<td>None</td>
<td>None</td>
<td>Clock.</td>
</tr>
<tr>
<td>rst_n</td>
<td>input</td>
<td>unsigned</td>
<td>None</td>
<td>None</td>
<td>Reset, active low.</td>
</tr>
<tr>
<td>mode</td>
<td>input</td>
<td>unsigned</td>
<td>0 for Erosion, 1 for Dilation.</td>
<td>None</td>
<td>Operation's mode.</td>
</tr>
<tr>
<td>template</td>
<td>input</td>
<td>unsigned</td>
<td>window_width * window_width - 1 : 0</td>
<td>None</td>
<td>Template for operation.</td>
</tr>
<tr>
<td>in_enable</td>
<td>input</td>
<td>unsigned</td>
<td>None</td>
<td>None</td>
<td>Input data enable, in pipeline mode, it works as another rst_n, in req-ack mode, only it is high will in_data can be really changes.</td>
</tr>
<tr>
<td>in_data</td>
<td>input</td>
<td>unsigned</td>
<td>window_width * window_width - 1 : 0</td>
<td>None</td>
<td>Input data, it must be synchronous with in_enable.</td>
</tr>
<tr>
<td>out_ready</td>
<td>output</td>
<td>unsigned</td>
<td>None</td>
<td>None</td>
<td>Output data ready, in both two mode, it will be high while the out_data can be read.</td>
</tr>
<tr>
<td>out_data</td>
<td>output</td>
<td>unsigned</td>
<td>None</td>
<td>None</td>
<td>Output data, it will be synchronous with out_ready.</td>
</tr>
</table>
</center>

***

## Simulations
Simulations for this module just support Gray-scale images !

### Waves


### Original


### Results


### PSNR





***

## Utilization



***

## Timing



***

## Thanks
**The sources of images for simulations:**  



***

