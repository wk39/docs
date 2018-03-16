# docs

## Autoware

  1. 


  1.





## Darknet

  1. CUDA Error. unknown error
    - problem

      ``` 
      CUDA Error: unknown error
      darknet: ./src/cuda.c:36: check_error: Assertion `0' failed.
      ```

    - solution

      https://groups.google.com/forum/#!topic/darknet/Ejrz3Rx5_bk              

      ```
      sudo rm -rf ~/.nv
      sudo reboot
      ```