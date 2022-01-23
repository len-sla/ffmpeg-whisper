## Project Name
> Auxilary tools and solution for pre/post
processing of audio and video based on ffmpeg

### General info
all the processing should be able to do in Colab environment with all its advantages and constrains
* Function for downloading and saving m3u8 stream to mp4 file with given length per a piece in Colab
* snippet for cuuting/triming video with recompilation to avoid problems with broken frames
* snippets to slow down speed up audion 


---
Colab is conviniet when you dont care about privacy though for some operations with private file like 
changing converting your private videos I recomend using ffmpeg on local machine.
Someone could say that installing whole environment could take  a while and will not be so simple.
Then what for once you have docker some ready to use image and then temporary container could be utilised

I need to mention here 
about excellent work of 



```
# curl + grep
VERSION=$(curl --silent https://api.github.com/repos/docker/compose/releases/latest | grep -Po '"tag_name": "\K.*\d')
```
and using then CURL

### Technologies
* Python, 
* ffmpeg, 


### Setup
easiest is to install/update libraries accordnig to install secion in notebook


### Status
Project is: _in progress_ 



### Other information
Notebook is divided on universal fuctions whicht  could be easlily used elsewhere.




### Contact
Created by: _len.sla_

