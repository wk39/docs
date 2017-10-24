# Neural Network

## Terms

 From [stackoverflow](https://stackoverflow.com/questions/4752626/epoch-vs-iteration-when-training-neural-networks)
 , __Franck Dernoncourt__ said...

  * one __epoch__ = one forward pass and one backward pass of all the training examples
  * __batch size__ = the number of training examples in one forward/backward pass. The higher the batch size, the more memory space you'll need.
  * number of __iterations__ = number of passes, each pass using [batch size] number of examples. To be clear, one pass = one forward pass + one backward pass (we do not count the forward pass and backward pass as two different passes).
  
    Example: if you have 1000 training examples, and your batch size is 500, then it will take 2 iterations to complete 1 epoch.

 ...
 
 [wikipedia](https://en.wikipedia.org/wiki/Information_retrieval)
 
 | Terms | meaning | ... |
 | --- | --- | --- |
 | sensitivity, recall, hit rate, or true positive rate (TPR) | TP/P = TP/(TP+FN) | how many ground truth can be found by the algorithm |
 | precision or positive predictive value (PPV) | TP/(TP+FP) | ... |
 | accuracy (ACC) | (TP+TN) / (P+N) = (TP+TN) / (TP+FN + TN+FP) | ... |


## Keras

### Tips
  * consistant result on every training
      ```python
      # seed should be fixed
      import numpy as np
      np.random.seed(123)
      from tensorflow import set_random_seed
      set_random_seed(456)
      ```
