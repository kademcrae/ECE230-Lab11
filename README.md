# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

## Summary

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
The counter flips its output every Count clock cycles. Each period takes two flips, so it divides by 2 * Count.
### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
Reset sets all three bits to 0. On the first clcok pulse, each bit flips to 1 and triggers the next bit, giving 111
### 3 - What width of ring counter would you use to get to an output of ~1KHz?
Use 17 stages to get close to 1 kHz. THey divide the 100 MHz clock down to about 763 Hz.
