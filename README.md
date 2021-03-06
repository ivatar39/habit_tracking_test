# habit_tracking_test

A new Flutter project for demonstration purposes.

## Demo
<img src="https://github.com/ivatar39/habit_tracking_test/blob/main/Screenrecorder-2021-05-24-21-30-37-181%5B1%5D.gif" width="360">

## Explanation
So I've chosen DDD (Domain Driven Design) as architectural pattern for this app, so it relies heavily on domain layer, 
in which habit is specified. Its fields are value objects, which hold some logic (validation, mainly). 
For state management I've used Bloc + Freezed + Hook. So please, don't judge me based on numbers of lines of code, cause it's
mostly auto generated. Freezed, mostly, relieves from boiler-plate code.
App works with an API, so all CRUD operations are avaliable.

## Diagram
![architecture](https://resocoder.com/wp-content/uploads/2020/03/DDD-Flutter-Diagram-v3.svg)
