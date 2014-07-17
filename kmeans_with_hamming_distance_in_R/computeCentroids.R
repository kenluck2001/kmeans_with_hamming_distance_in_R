computeCentroids <- function(X, idx, K)
{
	m = nrow(X);
	n = ncol(X);
	# You need to return the following variables correctly.

	zerovector <- rep(0,K*n);
	centroids = matrix(c(zerovector), nrow=K, byrow=TRUE);

	for (i in 1:K)
	{
		selectedrows = which(idx == i);
		cluster_data = X[selectedrows,];
		if(length(selectedrows) > 1)
		{
			temp <- colMeans(cluster_data);
		}
        else
        {
            temp <- cluster_data;
        }
        newvector <- as.integer( temp >= 0.5 );
		centroids[i, ] <- c(newvector);
	}
	return (centroids);

}


