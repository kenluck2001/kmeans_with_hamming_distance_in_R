kMeansInitCentroids <- function (X, K)
{

	m = nrow(X);
	n = ncol(X);
	
	
	zerovector <- rep(0,K*n);
	centroids = matrix(c(zerovector), nrow=K, byrow=TRUE);

	# Initialize the centroids to be random examples
	# Randomly reorder the indices of examples
	randidx = sample(m);
	# Take the first K examples as centroids
	centroids = X[randidx[1:K], ];

	return (centroids);
	# =============================================================

}


