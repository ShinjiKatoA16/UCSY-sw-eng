# Logic Puzzle

Some logic puzzles are good training of programming.

- Reasoning puzzle: Language dependent. There are some good puzzle on internet. Please translate and share if you find good one.
- SUDOKO: Language independent, there are some smart phone applications.
- Sum Cross (Kakuro): Language independent, there are some smart phone applications.
- and many more

## Example of reasoning puzzle

### Democratic pirates

There are 5 pirates (A, B, C, D, E) and 50 coins of gold.
They have decided following rules to devide the coins.

- At first, **A** will propose the distribution of coins. If more than half (3 or more pirates) agrees, coins will be distributed according to the proposal. If the proposal is not agreed by more than half, **A** will be killed
- If **A**'s proposal is not agreed, **B** will propose the distribution. If the proposal is not agreed by more than half (3 out of 4, or more), **B** will be killed.
- If **B**'s proposal is not agreed, **C** will propose(need 2 out of 3 or more agree). then **D** will propose if **C**'s proposal is not agreed.

All pirates make dicision according to following rules. They are clever enough and know that other pirates are clever enough.

- They want as many as coins possible
- They will chose to kill other pirates if the number of coin is same
- They chose to live than coins (accept 0 coin if necessary)

Question: What is the best proposal for **A**

Hint: Think reversally

### Reasoning Puzzle IBPS Top 50 (Problem 1-5)

This kind of chart helps to summarize the condition.

```
    |Lv AS Ad Pm Dn Bs Wl|Rd Bl Gr Yl Pk Bk Vl|
----+--------------------+--------------------|
Akil|x  .  .  x  x  .  x |x  .  .  .  .  x  x |
Nikl|x  x  x  x  o  x  x |x  .  .  x  x  x  x |
Saml|x  x  .  x  x  x  . |o  x  x  x  x  x  x |
Mani|o  x  x  x  x  x  x |x  .  .  .  .  x  x |
Prav|x  x  x  o  x  x  x |x  x  x  x  x  o  x |
Arun|x  .  .  x  x  .  . |x  .  .  .  .  x  x |
Frnk|x  .  .  x  x  .  . |x  x  x  x  x  x  o |
----+--------------------+--------------------|
Levi|                    |.  x  .  x  .  .  . |
AlSl|                    |x  x  x  o  x  x  x |
Adds|                    |.  x  .  x  .  .  . |
Puma|                    |.  x  .  x  .  .  . |
Denm|                    |.  x  .  x  .  .  . |
Basc|                    |.  x  .  x  .  .  . |
WdLd|                    |x  o  x  x  x  x  x |
----+--------------------+--------------------|
```

1. Praveen went to Puma and bought Black, raw:Puma,col:Black is **o**, other location of raw:Puma and col:Black are **x**
2. Nikil went to Denim, and her color is either Blue or Green. Raw:Denim Red, Pink, Black, Violet shall be **x**, only Green remains. So Nikil bought Green.

...

```
    |Lv AS Ad Pm Dn Bs Wl|Rd Bl Gr Yl Pk Bk Vl|
----+--------------------+--------------------|
Akil|x  o  x  x  x  x  x |x  x  x  o  x  x  x |
Nikl|x  x  x  x  o  x  x |x  x  o  x  x  x  x |
Saml|x  x  o  x  x  x  x |o  x  x  x  x  x  x |
Mani|o  x  x  x  x  x  x |x  x  x  x  o  x  x |
Prav|x  x  x  o  x  x  x |x  x  x  x  x  o  x |
Arun|x  x  x  x  x  x  o |x  o  x  x  x  x  x |
Frnk|x  x  x  x  x  o  x |x  x  x  x  x  x  o |
----+--------------------+--------------------|
Levi|                    |x  x  x  x  o  x  x |
AlSl|                    |x  x  x  o  x  x  x |
Adds|                    |o  x  x  x  x  x  x |
Puma|                    |x  x  x  x  x  o  x |
Denm|                    |x  x  o  x  x  x  x |
Basc|                    |x  x  x  x  x  x  o |
WdLd|                    |x  o  x  x  x  x  x |
----+--------------------+--------------------|
```
