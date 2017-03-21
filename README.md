
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=tuhdo1710%40gmail%2ecom&lc=VN&item_number=tuhdo&currency_code=USD&bn=PP%2dDonationsBF%3aDonate%2dPayPal%2dgreen%2esvg%3aNonHosted)

Operating Systems: From 0 to 1
=============================

This book helps you gain the foundational knowledge required to write an
operating system from scratch. Hence the title, 0 to 1.

After completing this book, at the very least you will learn:

- How to write an operating system from scratch by reading hardware datasheets.
  In the real world, it works like that. You won't be able to consult Google for
  a quick answer.

- A big picture of how each layer of a computer is related to the other, from hardware to software.

- Write code independently. It's pointless to copy and paste code. Real learning
  happens when you solve problems on your own. Some examples are given to kick
  start, but most problems are yours to conquer. However, the solutions are
  available online for you to examine after giving it a good try.

- Linux as a development environment and how to use common tools for low-level
  programming.

- x86 assembly in-depth.

- How a program is structured so that an operating system can run.

- How to debug a program running directly on hardware with gdb and QEMU.

- Linking and loading on bare metal x86_64, with pure C. No standard library. No
  runtime overhead.

[Download the book](https://github.com/tuhdo/os01/files/828054/Operating_System_From_0_to_1.pdf)

# The pedagogy of the book

> You give a poor man a fish and you feed him for a day. You teach him to fish
> and you give him an occupation that will feed him for a lifetime.

This has been the guiding principle of the book when I was writing it. The book does
not try to teach you everything, but enough to enable you to learn by yourself.
The book itself, at this point, is quite "complete": once you master part 1 and
part 2 (which consist of 8 chapters), you can drop the book and learn by
yourself. At this point, smart readers should be able to continue on their own.
For example, they can continue their journeys
on [OSDev wiki](http://wiki.osdev.org/Main_Page); in fact, after you study
everything in part 1 and part 2, you only meet
the [minimum requirement](http://wiki.osdev.org/Required_Knowledge) by OSDev
Wiki (well, not quite, the book actually goes deeper for the suggested topics).
Or, if you consider developing an OS for fun is impractical, you can continue
with a Linux-specific book, such as this free
book [Linux Insides](https://0xax.gitbooks.io/linux-insides/content/), or other
popular Linux kernel books. The book tries hard to provide you a strong
foundation, and that's why part 1 and part 2 were released first.

The book teaches you core concepts, such as x86 Assembly, ELF, linking and
debugging on bare metal, etc., but more importantly, where such information
come from. For example, instead of just teaching x86 Assembly, it also teaches
how to use reference manuals from Intel. Learning to read the official
manuals is important because only the hardware manufacturers themselves
understand how their hardware work. If you only learn from the secondary
resources because it is easier, you will never gain a complete understanding of
the hardware you are programming for. Have you ever read a book on Assembly, and
wondered where all the information came from? How does the author know
everything he says is correct? And how one seems to magically know so much about
hardware programming? This book gives pointers to such questions.

As an example, you should skim through chapter 4, "x86 Assembly and C", to see
how it makes use of the Intel manual, Volume 2. And in
the process, it guides you how to use the official manuals.

Part 3 is planned as a series of specifications that a reader will implement to
complete each operating system component. It does not contain code aside from a
few examples. Part 3 is just there to shorten the reader's time when reading the
official manuals by giving hints where to read, explaining difficult concepts
and how to use the manuals to debug. In short, the implementation is up to the
reader to work on his or her own; the chapters are just like university assignments.

# Prerequisites

Know some circuit concepts:
+ Basic Concepts of Electricity: atoms, electrons, protons, neutrons, current flow.
+ Ohm's law

However, if you know absolutely nothing about electricity, you can quickly learn it here:
<http://www.allaboutcircuits.com/textbook/>, by reading chapter 1 and chapter 2.

C programming. In particular:

+ Variable and function declarations/definitions

+ While and for loops

+ Pointers and function pointers

+ Fundamental algorithms and data structures in C

Linux basics:

+ Know how to navigate directory with the command line

+ Know how to invoke a command with options

+ Know how to pipe output to another program

Touch typing. Since we are going to use Linux, touch typing helps. I know typing
speed does not relate to problem-solving, but at least your typing speed should
be fast enough not to let it get it the way and degrade the learning experience.

In general, I assume that the reader has basic C programming knowledge, and can
use an IDE to build and run a program.

# Status:
* Part 1
    - Chapter 1: Complete
    - Chapter 2: Complete
    - Chapter 3: Almost. Currently, the book relies on the Intel Manual for fully explaining x86 execution environment.
    - Chapter 4: Complete
    - Chapter 5: Complete
    - Chapter 6: Complete
* Part 2
    - Chapter 7: Complete
    - Chapter 8: Complete
* Part 3
    - Chapter 9: Incomplete
    - Chapter 10: Incomplete
    - Chapter 11: Incomplete
    - Chapter 12: Incomplete
    - Chapter 13: Incomplete

    ... and future chapters not included yet ...

In the future, I hope to expand part 3 to cover more than the first 2 parts. But
for the time being, I will try to finish the above chapters first.

# Sample OS
[This repository](https://github.com/tuhdo/sample-os) is the sample OS of the
book that is intended as a reference material for part 3. It covers 10 chapters
of the "System Programming Guide" (Intel Manual Volume 3), along with a simple
keyboard and video driver for input and output. However, at the moment, only the
following features are implemented:

- Protected mode.
- Creating and managing processes with TSS (Task State Structure).
- Interrupts
- LAPIC.

Paging and I/O are not yet implemented. I will try to implement it as the book progresses.

# Contributing

If you find any grammatical issue, please report it using Github Issues. Or, if
some sentence or paragraph is difficult to understand, feel free to open an
issue with the following title format: `[page number][type] Descriptive Title`.

For example: `[pg.9][grammar] Incorrect verb usage`.

`type` can be one of the following:

- `Typo`: indicates typing mistake.
- `Grammar`: indicates incorrect grammar usage.
- `Style`: indicates a style improvement.
- `Content`: indicates problems with the content.

Even better, you can make a pull request with the provided book source. The main
content of the book is in the file "Operating Systems: From 0 to 1.lyx". You can
edit the .txt file, then I will integrate the changes manually. It is a
workaround for now since Lyx can cause a huge diff which makes it impossible to
review changes.

The book is in development, so please bear with me if the English irritates you.
I really appreciate it.

Finally, if you like the project and if it is possible, please donate to help
this project and keep it going.

# Got questions?
If you have any question related to the material or the development of the book,
feel free to [open a Github issue](https://github.com/tuhdo/os01/issues/new).
