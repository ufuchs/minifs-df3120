minifs-df3120 
=============

*minifs-df3120* is forked from the [minifs-df3120](https://github.com/tuopppi/minifs-df3120) repository by [Tuomas 'tuopppi' Vaherkoski](https://github.com/tuopppi).

Needing a clean installation, his repository was the first choice.  
Many thanks again, Toumas!

This fork supports one and only the [*Parrot DF3120 320x240 Bluetooth/SD/USB Picture Frame*](https://sites.google.com/site/repurposelinux/df3120) and includes all the necessary patches from [parrot-df3120_post-hoc](https://github.com/ufuchs/parrot-df3120_post-hoc).

Background is/was the 'Separation of concerns' during the development process of [weather-on-df3120](https://github.com/ufuchs/weather-on-df3120).

During the development process, there is a need of
- a net file system 
- a serial console support 
on the DF3120.

The final product doesn't need such support/features!  
On the other hand it is possible to develop the weather application on the host system.  
So I have had constantly to switch between build configurations, copy files from the workspace to mini-fs and so on.

Therefore I have decided to introduce some kind of product line variability
- One thing is the final product
- The other thing is the development phase

This is reflected in /conf/board/
- *df3120*, the release/final product
- *df3120-dev*, the development stage

And here the result of all efforts.

![df3120-startup1280](https://f.cloud.github.com/assets/614954/1368748/5e19df06-39bb-11e3-8a51-7e64cbd45906.jpg)









