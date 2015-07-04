# GECCO 2015 talk outline

_It turns out that basic Markdown (including Github Markdown) doesn't support nested lists with different symbol sets (letters, numerals, etc.), so I switched everything to just numerals. It doesn't look super pretty, but it at least does the (auto)numbering correctly. – Nic_

0. Big Picture
    1. Graph DB work suggested we might want to prefer "better" parent as root parent in crossover (show plot from MICS paper?)
    2. We tried that on a bunch of problems
    3. Results are unclear. Definitely improved results for some situations, and in general led to an improvement or no difference. Were some cases, however, where it hurt.

1.   Introduction
    1. Explain Sub-Tree Crossover. _Keep this short since the audience will mostly be quite familiar with these ideas._
        1. Define Root Parent
        2. Define Non-Root Parent
    2. Impact of Crossover Asymmetry on Semantics
        1. Root Parent (Typically) Contributes More Overall Nodes
        2. Nodes Closest to the Root of the Tree (Typically) Have Stronger Impact on Evaluation
        3. We observed in one setting (show MICS plot?) that Fitness of Offspring Tends to Improve When Root Parent Has Better Fitness Than Non-Root Parent
        4. Is this true more generally?
    3. Introduce Crossover Bias

2.  Body - THINGS WILL GO HERE

3. Conclusions
     1. Summary
        1. Effects of Crossover Bias Tend to Be Either Beneficial or Neutral, but can occasionally be detrimental
        1. Crossover Bias is Worth Trying When There is Reason to Suspect Substantial Difference in Parental Fitnesses
           1. Selection Pressure is Weak
           2. Unavoidable Steep Changes in Fitness
           3. Dynamic fitness functions
           4. Situation Where the Fitness Function Changes Over Some Variable – _I'm not sure what this means – Nic_
     2. Further Work
        1. Effectiveness of Larger Tournaments Compared to Crossover Bias – _What exactly is being suggested here? Doesn't our data already do most of this?_
        2. Generalization of Crossover Bias (A.K.A. Crossover Bias May Result in Overfitting)
        3. Examining Other Asymmetries in Evolutionary Systems
           1. Better Understand behavior and Performance of Existing Systems
           2. Help in Discovering and Designing New Tools That Leverage These Asymmetries
