newKmeans <- function(X, K, max_iters = 200)
{
    #Settings for running K-Means
    initial_centroids <- kMeansInitCentroids(X, K)
    output <- runkMeans(X, initial_centroids, max_iters);
    return (output);
    #which(out == 1);

}
