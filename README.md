minifs-df3120-for-weather
=========================

*minifs-df3120-for-weather* is forked from the #
https://github.com/tuopppi/minifs-df3120 
repository by 
Tuomas 'tuopppi' Vaherkoski.
This fork supports one and only the *Parrot DF3120 320x240 Bluetooth/SD/USB Picture Frame* and includes all the necessary patches from https://github.com/ufuchs/parrot-df3120_post-hoc.
Needing a clean installation, this repository was the first choice. Many thanks again, Toumas!

Background is/was the 'Separation of concerns' during the development process of 'weather-on-df3120'(https://github.com/ufuchs/weather-on-df3120).

During the development process, there is a need of
- a net file system 
- a serial console support 
on the DF3120.

A final product doesn't need such support/features!
On the other hand it is possible to develope this application on the host system.
So I have had constantly to switch between configurations, copy files from the workspace to mini-fs and so on.

Therefore I have decided to make a cut
- One thing is the operating system with the necessary support of this application 
- The other thing is the application itself











