##12-25-2022
------------------
## 2022-12-25
------------------
I did a contest I solved A-D way back, but I decided to VC it again because I wasn't sure I actually understood the solution to D and wanted a hand at E.

I got D, and got the observation for E that only one group of elements grouped by MSB can have >=2 elements. I went down a lot of rabbitholes grouping elements by only their MSB though, I didn't anticipate the stripping bit solution and still don't really understand it. I understand that the 1 + max(F(0, b-1), F(1, b-1)) is saying that one group you keep everything, and the other group you don't remove anything at all, fine. 

My greedy group by bit solution was kind of sus to begin with, since my reasoning was "These have to connect *somehow*". The best "somehow" I came up with was that if you have MSB J, J will always group to a group lower than I. But that ended up with just random guesses. I think this recursive solution is just a classic thing I gotta get more used to
## 2022-12-26
------------------
First day of CF Zealots.

I have a stupid Mo's algorithm solution that's TLEing, and another one that I have no idea why it's TLEing. Probably work on debugging.

J just turned out to be a stupid digit DP problem that gets dangerously close to time limits. E was standard.

N is hard to think about, to combine paths it's the max across all lengths of pairs of paths s.t. the pair, when xor'd, has <=1 popcount. 

M was kinda cool, though after looking it up after I solved the problem, there's apparently an O(n^2) solution instead of O(n^3logn) which is what I did lol.

I should really test samples locally before submitting, ESPECIALLY for icpc... I WA'd 1 twice simply because of debug statements. Also, MLE1 is something to watch out for.

I cheesed I with Mo's, let's go. TIL that DFS Tin/Tout only needs a size N array, not 2N by using half open intervals for queries. But there's probably an actual solution to I that I'll have to learn (probably root combination technique, I'm still bad at those problems). Also, apparently I solved this problem before, I also used mo's, but I got rid of the log(n) factor by doing some prefix sum thing, leveraging that if you have a prefix sum of counts, you only update +1 -1 locally, so apparently there's a way to make the prefix sum O(1) updates instead of O(n). Pretty insane stuff from past me, vs. just throwing a segtree at it and calling it a day.

G was because STL bsearch was probably not good for this problem, or I just need to understand it more. WA'd a few times because of a stupid bug like that. I did solve the problem before though, and when I looked at my previous submission, my current one is a lot cleaner (I malloced a 3D C-style array in that one!)


