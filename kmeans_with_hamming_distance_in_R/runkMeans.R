runkMeans <- function(X, initial_centroids, max_iters)
{
	# Initialize values
	m = nrow(X);
	n = ncol(X);
	
	K = nrow(initial_centroids);
	centroids = initial_centroids;

	idx <- rep(0, m);


	# Run K-Means
	for (i in 1:max_iters )
	{
		
		# For each example in X, assign it to the closest centroid
		idx <- findClosestCentroids(X, centroids);

		previous_centroids = centroids;
		# Given the memberships, compute new centroids
		centroids <- computeCentroids(X, idx, K);
		centroid_diff = sum (sum( (centroids - previous_centroids)^2 ) );
		

		if (centroid_diff < 0.0001)
		{
			break;
		}

	}
	#newList$centroids or newList$order. 
	newList <- list("centroids" = centroids, "order" = idx);

	return (newList);

}
