---
layout: post
title: "simpsons-paradox"
---

# Simpson's Paradox
---

Michael Nielsen's essay "[Reinventing explanation](http://michaelnielsen.org/reinventing_explanation/)" proposes to use Simpson's Paradox as a stalking horse (a delightfully evocative term which I first encountered reading said essay) in order to show the value of creating representations that help explain difficult ideas.
<br>

While I believe Nielsen's essay, on the whole, convincingly argues for the value of "using non-traditional media to create deeper explanations of ideas", I find the visualizations he proposes for Simpson's paradox do not make the conceptual picture any clearer. What's more, in my view he never actually explains what causes Simpson's paradox to occur in the examples he chose to illustrate it. This may be on purpose given that it's just a "stalking horse", but I found it glaring enough of an omission to compel me to write this post. (I am also not deterred by the fact that this is an "old" post, as indicated by the "Comment on this essay on Google Plus"[^1] link at the bottom of the page).
<br>

My thesis is that *Simpson's paradox is caused by focusing on rates (and percentages) instead of the underlying counts*. If memory serves, this exact admonition is made by Jordan Ellenberg in his book "How Not to Be Wrong", although in a different context. (I don't recall that he discusses Simpson's paradox in there, and my Kindle won't let me search the contents of the book. I stopped reading at around a third of the book because I felt there was a lack of equations, and the verbiage overshadowed the intuition).
<br>

Nielsen introduces Simpson's paradox with the following data from an actual study in kidney stone treatment (the abstract of which includes fancy-sounding methods such as **percutaneous nephrolithotomy** and **extracorporeal shockwave lithotripsy**). Before we discuss the actual Paradox, familiarize yourself with the data and see which treatment (A or B) you would prefer if you were a patient in the study. "Ok" means the treatment succeeded, while "No" means the treatment failed (oh, the hoops we jump through when making tables with Markdown).
<br>

|              |A Ok |A No |B Ok |B No |
|--------------|-----|-----|-----|-----|
| Small stones | 81  | 6   | 234 | 36  |
| Large stones | 192 | 71  | 55  | 25  |
| All stones   | 273 | 77  | 289 | 61  |
<br>

(I have not provided the rates of success. You may bust out a calculator if you wish, although we are mostly interested in the overall trends). (With respect to Nielsen's essay, I have also flipped the treatments' labels).
<br>

If we consider small stones or large stones, respectively, we see that treatment A is more effective in both cases. If we consider all stones, however, we see that treament B is more effective. What gives? Take a moment to see if you can figure it out.
<br>

---

As it turns out, *treament A was disproportionately evaluated on patients with large stones, and such patients are less likely to recover in general*:
<br>

|              | Ok  | No  |
|--------------|-----|-----|
| Small stones | 315 | 42  |
| Large stones | 247 | 96  |
| All stones   | 562 | 138 |
<br>

So how does Simpson's Paradox arise? (At this point in the post I realize I have not defined Simpson's Paradox, which I guess is okay since neither did Nielsen; I would suggest that you Google it). Simpson's Paradox arises because of an incorrect hidden assumption in our reading of the data: that the proportion of large and small stones exposed to each treatment was the same. Knowing that this is not the case, it is obvious that treament A is superior (although, not by an enormous margin).
<br>

The same phenomenon is at work in the Democrat vs Republican Civil Rights Act votes. (If you have not read Nielsen's essay, this example may not make much sense; read the essay for context). In the extreme, if there were 100 Democrats and 100 Republicans with a maximally uneven split (1 Democrat in the North vs 99 Republicans in the North), if the single (1) Democrat in the North votes favorably, that is 100% Democrat agreement in the North, which is a larger rate than if 98 (almost 99%) of Republicans in the North voted favorably. Similarly, if a single (1) Democrat in the South voted favorably (1/99% in favor) while not a single (0) Republican in the South voted favorably (0%), Democrat agreement would also be larger in the South. On the whole, however, the picture could hardly be more lopsided: 2% agreement on the Democrat side, vs 98% on the Republican side.
<br>

(Interestingly, in this case, the "correct" picture emerges in the aggregate rather than in the groups. A question for another time).
<br>

Another example explored by Nielsen concerns batting averages. Again, I find Nielsen's explanation wanting. It boils down to the same idea, so I won't go into the details either: we are comparing apples with oranges.
<br>

---

This post was also inspired by an excellent visual [introduction to information theory](https://colah.github.io/posts/2015-09-Visual-Information/) on Cristopher Olah's blog.
<br>

[Here](http://augmentingcognition.com/ltm.html) is my favorite essay of Nielsen's (altough I have only read a handful).
<br>

[^1]: I am aware that Google Plus was shutdown on April 2, 2019.
