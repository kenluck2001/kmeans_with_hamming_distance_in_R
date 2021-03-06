kmeans with hamming distance in R
=================================

Kmean algorithm in R using hamming distance

Kmeans is a popular algorithm for representative clustering in data mining task. However, most of the implementation did not add hamming distance. The reason is quite simple, given the way the original K-means algorithm is written. We need average to get centroids. It is not possible to get the hamming distance between a vector of binary digits and the vector of float values. As a result, algorithm designed to use hamming distance will not converge without any modification to the algorithm.

The approach used in this project is to round the values of the centroid where value greater than 0.5 is made to be 1 while those values less than 0.5 is made to be 0. This is majority voting scheme which is widely used in machine learning.

Here is an example of using the the software


n=1000
X=rep(0,n)
Y=rbinom(n,1,1/2)
 
data = matrix(c(Y), nrow=100, byrow=TRUE); #create a binary vector of size 100 and dimension is 1000

output = newKmeans(data, 5) #cluster the data into 5 groups

#Obtain the centroid
output$centroids

#Obtain the order of the clustered data
output$order
