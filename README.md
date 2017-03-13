# LCA Birds
Classifying images of birds using sparse dictionaries. 

## Background
A set of images or patch images is essentially an overcomplete set of vectors. A basis for this set, called a sparse dictionary, can be learned for reconstruction or unsupervised classification by minimizing the MSE between the reconstruction using the dictionary, *D*, and the actual data, *b*.

<p align="center">
  <b>Figure 1: The image can be represented using certain amounts of dictionary elements.</b><br>
  <br><br>
  <img src="https://github.com/MichaelTeti/LCA_Sparse_Coding_WadingBirds/blob/master/ax%3Db.jpg">
</p>

We use a locally-competitive neural network, proposed in Rozell et al (2008), to learn this dictionary using local competition between nodes.

<p align="center">
  <b>Figure 2: The weights in LCA evolve over time to reduce the mean-squared reconstruction error. Local inhibition is represented by red   arrows</b><br>
  <br><br>
  <img src="https://github.com/MichaelTeti/LCA_Sparse_Coding_WadingBirds/blob/master/LCA1.jpg">
</p>

This causes the dictionary to be sparse. Once the dictionary is learned, a new example can be classified by obtaining the sparse coefficients for the image with the pre-learned dictionaries. These coefficients can then be pooled over to determine what dictionary, and thus what class, best explains the image. Here, we apply this method to classify images of wading birds as part of a year-long grant from the Everglades Foundation.  

## Methods and Code
After first reading in an image, we initialize a dictioanary, D, using random patches. k is the number of patches we want in the dictionary.  
>k=300;  
>r=randperm(size(X, 2));  
>D=X(:, r(1:300));  

## Results
<p align="center">
  <b>Figure 3: The activations of the coefficients from each dictionary correctly classify the new picture of the bird.</b><br>
  <br><br>
  <img src="https://github.com/MichaelTeti/LCA_Sparse_Coding_WadingBirds/blob/master/bargraph.png">
</p>

