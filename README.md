# LCA Birds
Classifying images of birds using sparse dictionaries. 

## Background
A set of images or patch images is essentially an overcomplete set of vectors. A basis for this set, called a sparse dictionary, can be learned for reconstruction or unsupervised classification by minimizing the MSE between the reconstruction using the dictionary, *D*, and the actual data, *b*.

<div style="text-align:center"><img src ="https://github.com/MichaelTeti/LCA_Sparse_Coding_WadingBirds/blob/master/ax%3Db.jpg" /></div>

We use a locally-competitive neural network, proposed in Rozell et al (2008), to learn this dictionary using local competition between nodes.

![alt tag](https://github.com/MichaelTeti/LCA_Sparse_Coding_WadingBirds/blob/master/LCA1.jpg)

This causes the dictionary to be sparse. Once the dictionary is learned, a new example can be classified by obtaining the sparse coefficients for the image with the pre-learned dictionaries. These coefficients can then be pooled over to determine what dictionary, and thus what class, best explains the image. Here, we apply this method to classify images of wading birds as part of a year-long grant from the Everglades Foundation.  

## Results
![alt tag](https://github.com/MichaelTeti/LCA_Sparse_Coding_WadingBirds/blob/master/bargraph.png)
