
# "Humans adapt their anticipatory eye movements to the volatility of visual motion properties"

<p align="center">
  <img width="80%" src="https://raw.githubusercontent.com/chloepasturel/AnticipatorySPEM/master/2020-03_video-abstract/PasturelMontagniniPerrinet2020_video-abstract.gif">
</p>

## At what point should we become alarmed? When faced with changes in the environment, the sensory system provides an effective response.

The current health situation has shown us how abruptly our environment can change from one state to another, tragically illustrating the volatility we can face. To understand this notion of volatility, let's take the case of a doctor who, among the patients he receives, usually diagnoses one out of ten cases of flu. Suddenly, he gets 5 out of 10 patients who test positive. Is this an unfortunate coincidence or are we now sure that there is a switch to a flu episode? Recent events have shown us how difficult it is to make a rational decision in times of uncertainty, and in particular to decide *when* to act. However, mathematical solutions exist that adapt our behavior by optimally combining the information explored recently with that exploited in the past. In an article published in PLoS Computational Biology, Pasturel, Montagnini and Perrinet show that our brain responds to changes in the sensory environment in the same way as this mathematical model.

<p align="center">
  <img width="80%" src="https://raw.githubusercontent.com/laurentperrinet/PasturelMontagniniPerrinet2020/master/figures/synthesis.svg">
  <br>
  By manipulating the probability bias of the presentation of a visual target on a screen, this experiment manipulates the volatility of the environment in a controlled way by introducing switches in the probability bias. These switches randomly change the bias among different degrees of probability (both left and right). At each trial, the bias then generates a realization, either left (L) or right (R).  The target moves in blocks of 50 trials (1 to 50) and these realizations are the only ones to be observed, the evolution of the bias and its shifts remaining hidden from the observer. Compared to the floating average that is conventionally used, a mathematical model can be deduced as a predictive average that allows to better follow the dynamics of the probability bias. Thanks to psychophysical experiments, we have shown that observers preferentially follow the predictive mean, rather than the floating mean, both in explicit judgements (predictive betting) and, more surprisingly, in the anticipatory movements of the eyes that are carried out without the observers being aware of them. " 
</p>

These theoretical and experimental results show that in this realistic situation in which the context changes at random moments throughout the experiment, our sensory system adapts to volatility in an adaptive manner over the course of the trials. In particular, the experiments show in two behavioural experiments that humans adapt to volatility at the early sensorimotor level, through their anticipatory eye movements, but also at a higher cognitive level, through explicit evaluations. These results thus suggest that humans (and future artificial systems) can use much richer adaptation strategies than previously assumed. They provide a better understanding of how humans adapt to changing environments in order to make judgements or plan responses based on information that varies over time.

 * [Abstract](https://www.biorxiv.org/content/10.1101/784116v3)
 * [HTML](https://www.biorxiv.org/content/10.1101/784116v3)
 * [PDF](https://www.biorxiv.org/content/10.1101/784116v3.full.pdf)
 * official [publication](https://doi.org/10.1371/journal.pcbi.1007438) (or in [PDF](https://journals.plos.org/ploscompbiol/article/file?id=10.1371/journal.pcbi.1007438&type=printable)) with [EDITOR CORRECTION](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1008385) (or as [PDF](https://journals.plos.org/ploscompbiol/article/file?id=10.1371/journal.pcbi.1008385&type=printable))

 * supplementary info : https://github.com/laurentperrinet/PasturelMontagniniPerrinet2020/blob/master/Pasturel_etal2020_PLoS-CB_SI.pdf
 * code for paper: https://github.com/laurentperrinet/PasturelMontagniniPerrinet2020
 * code for framework: https://github.com/chloepasturel/AnticipatorySPEM
 * code for figures [Figure 1](https://github.com/chloepasturel/AnticipatorySPEM/blob/master/1_protocole.ipynb), [Figure 2](https://github.com/chloepasturel/AnticipatorySPEM/blob/master/2_raw-results.ipynb), [Figure 3](https://github.com/chloepasturel/AnticipatorySPEM/blob/master/3_Results_1-theory_BBCP.ipynb), [Figure 4](https://github.com/chloepasturel/AnticipatorySPEM/blob/master/4_Results_2_fitting_BBCP.ipynb), [Figure 5](https://github.com/chloepasturel/AnticipatorySPEM/blob/master/5_Meta_analysis.ipynb)
 * code for the Bayesian model: https://github.com/laurentperrinet/bayesianchangepoint
 * [video abstract](https://raw.githubusercontent.com/chloepasturel/AnticipatorySPEM/master/2020-03_video-abstract/PasturelMontagniniPerrinet2020_video-abstract.mp4) (and the [code](https://github.com/chloepasturel/AnticipatorySPEM/blob/master/2020-03_video-abstract/2020-03-24_video-abstract.ipynb) for generating the video abstract)
