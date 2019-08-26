---
layout: post
title:      "Knowing When to Quit"
date:       2019-08-17 08:28:00 +0000
permalink:  knowing_when_to_quit
excerpt:    <p>Sometimes quitting is a good thing</p>
---

<!-- Knowing when to quit.

The value of starting over.

Research. Read the docs. Ask for help.

Rails project start date: July 10 

Rails project submit date: August 21

Rails project assessment date: August 26 -->

My Rails portfolio project took a _loooooooong_ time to finish. Actually, my [BorrowBuddy app](https://github.com/meg-gutshall/borrow-buddy) is version 2.0 of my project which was required to complete the Rails section of [Flatiron's online software engineering program](https://flatironschool.com/career-courses/coding-bootcamp/online/). I had an amazing—and completely viable—idea to begin with and I worked really hard on trying to bring to life, but I found myself going in circles and eventually made the decision to start over. The most difficult part of this decision was determining whether to start fresh or press on.

This project originally started out as BookBuddy. BookBuddy was designed to be a library checkout system for school and classroom libraries. In effect, this app would allow students in a particular school to view all books catalogued in the school's libraries, whether it's a centrally-located library or a teacher's classroom library. They can then borrow the book through the app and retrieve the book from the room location listed in the app. The student has the ability to put a book on hold if it's not available and renew their current borrow if the book does not have a hold against it from another student. I also added admins because it wouldn't be an effective app without someone maintaining the libraries, now would it? They have the ability to create, edit, and destroy schools, libraries, books, students, borrows, and holds. I wanted to eventually include email notification capabilities so the students would automatically receive reminders for when their books were due and when books they had on hold became available but I wasn't able to get that far; the problems had started up.

The build was actually going really smoothly at first. Flatiron includes virtual study groups as part of the online program (which as an interactive learner, I find to be **_immensely_** helpful) and
I had attended—and actively participated in—one of the [Rails Project Build series](https://www.youtube.com/playlist?list=PLI_-ZfHw8Y6UtkEuZ9aJ-DN3t1L0_8BGs) hosted by Jenn Hansen, the wonderful and highly knowledgeable Rails section lead (see the corresponding repo [here](https://github.com/hansenjl/Ice-Cream-Social)). Needless to say, I felt pretty comfortable with what I was doing. The issues started when I added my `Admin` model to the app. Since I was using the Devise gem for my user models, I had generated `Admin` using Devise like so:

```rails
rails g devise Admin
```

After that I checked the model and the migration file to make sure everything was configured the way I wanted it, then ran `rails db:migrate`, restarted my server, and it was all running pretty smoothly. But when I would navigate throughout my app, I keep running into permission issues. You see, my `Admin` and `Student` models had different Active Record associations as well as different permissions so they had to be created as two separate classes (instead of adding `admin` as a boolean attribute on a `User` class). I tried so many different fixes. <!-- List some issue fix attempts from commit history. --> The [Devise docs](http://devise.plataformatec.com.br/) became my best friend. I attended every Rails project office hours that I could, but it seems like whenever I had the issue nipped in the bud and tried to move on to fulfilling another requirement in my project, my browser would raise **_another_** error leading back to Devise. It came to a head the week after I returned from the [Ruby for Good](https://rubyforgood.org/) conference/hackathon when I felt like I hadn't accomplished _anything_ because I was just coding myself in circles trying to fix these bugs. At this point in time, I had been working on the project for three weeks and was nowhere near finished.

<!-- Talk about the time put into the app and weighing the options of continuing versus starting anew. List the reasons I ultimately decided to start over and how I'm glad I made that decision. -->

I had one of two choices:

1. **Stick with BookBuddy and somehow dig my way out.** I had put so much work into this project already and I _knew_ there had to be a solution to my problem out there—I just hadn't found it yet.
2. **Go scorched earth and start from scratch.** At this point, the option was appealing just so I wouldn't feel like slamming my head against a wall anymore. But did I really want to start all over again?

It turns out I landed somewhere in the middle. Like I said before, I had put a **ton** of hard work and long hours into BookBuddy so that app was not going to go anywhere; but that didn't mean it had to be my Rails portfolio project either. It's still sitting happily in its [GitHub repo](https://github.com/meg-gutshall/book-buddy) just waiting for me to obtain a little more knowledge (or patience... or bravery) to pick it up again and continue on. Instead, what I did was abstract the original concept of BookBuddy and created BorrowBuddy, an app that tracks which item you lent out and to whom you lent the item. I was able to use a lot of the code I had already written in my previous project and implement it on a smaller, simpler, more manageable scale.

In many cases, it's important to stick with something once you start it, especially as a programmer (that's pretty much part of the job description). That's a huge reason why I was so hesitant to restart my project. Programmers are naturally drawn to figuring out why something doesn't work and a healthy dose of perseverance (aka. stubbornness) is certainly a good quality to have, but not when it starts to get in the way of your main objective, your end goal. I'm learning many things through the Flatiron program and this latest project taught me that, at times, there can be value in quitting.
