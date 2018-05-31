# docs

## Autoware

  1. ndt_matching error after hibernation/sleep

     - problem
     
       after hibernation or sleep mode, ndt_matching is not working...

       ```  
       Error: unknown error
       computing/perception/localization/lib/fast_pcl/ndt_gpu/src/MatrixDevice.cu 11
       ```
       
     - solution

       -  ~~~reinstall cuda, cudnn~~~
       -  ~~~recompile "autoware", "opencv"~~~
       -  __temporary__ ;
       
          undef CUDA_FOUND, USE_FAST_PCL from ndt_matching.cpp, then recompile --> __WORKS!__


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
