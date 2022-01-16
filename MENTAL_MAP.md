
## Grading scales link
https://www.mountainproject.com/international-climbing-grades
https://www.thecrag.com/en/article/grades
https://www.thecrag.com/en/article/gradesonthecrag#article.gradesonthecrag.header.grade-contexts
https://www.ircra.rocks/single-post/2016/09/12/Reporting-Grades-in-Climbing-Research
https://core.ac.uk/download/pdf/77059908.pdf

https://webmail.derby.ac.uk/owa/redir.aspx?C=127PeD_F70iak-ZQvYIxsTiQs8Mx7tFIrFn8Hi-jq17F-2lbXXrS_qOFxB-aI7akamx0yOqanpI.&URL=https%3a%2f%2fwww.thebmc.co.uk%2fDownload.aspx%3fid%3d108
https://rockfax.com/climbing-guides/grades/

## Description
gradr_lib is the flutter client library for converting grades from one grading system to another. With some neat features

The client will contain the grading systems and utilities to convert them

Must be modular and setup from a json file or API call, to be easily migrated to other languages and platforms.

Grading systems will be split into "bands", as done in [thecrag](https://www.thecrag.com/en/article/grades)
Each grade will be part of one band

One grade might match more than one grade in some other system
Grading systems are not perfect

## Library Contents

* json file containing grading systems
* calculator entity, in charged of converting from one grade to another
* grade entity
* grading system entity

## Library Features

* ability to create calculators
* convert between grading systems
* detect grading system
* convert from grade to all other grading systems

