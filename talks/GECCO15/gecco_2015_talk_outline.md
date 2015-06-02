# GECCO 2015 talk outline

_We can use this to sketch out an outline for our GECCO 2015 talk. Go crazy!_

# WHOA THE FORMATTING IS REALLY WONKY RIGHT NOW BUT I AM GOING TO SEE CATS AT THE MOMENT SO IT WILL HAVE TO WAIT UNTIL I GET BACK

I.   Introduction
     1. Explain Sub-Tree Crossover
        A. Define Root Parent
        B. Define Non-Root Parent
     2. Impact of Crossover Asymmetry on Semantics
        A. Root Parent (Typically) Contributes More Overall Nodes
        B. Nodes Closest to the Root of the Tree (Typically) Have Stronger Impact on Evaluation
        C. Fitness of Offspring Tends to Improve When Root Parent Has Better Fitness Than Non-Root Parent
     3. Introduce Crossover Bias

II.  Body - THiNGS WILL GO HERE

III. Conclusions
     1. Summarization
        A. Effects of Crossover Bias Tend to Be Either Beneficial or Neutral
        B. Crossover Bias is Worth Implementing When There is Reason to Suspect Substantial Difference in Parental Fitnesses
           i.   Selection Pressure is Weak
           ii.  Unavoidable Steep Changes in Fitness
           iii. Situation Where the Fitness Function Changes Over Some Variable
     2. Further Work
        A. Effectiveness of Larger Tournaments Compared to Crossover Bias
        B. Generalization of Crossover Bias (A.K.A. Crossover Bias May Result in Overfitting)
        C. Examining Other Asymmetries in Evolutionary Systems
           i.  Better Understand Performance of Existing Systems
           ii. Help in Decovering and Designing New Tools That Leverage These Asymmetries