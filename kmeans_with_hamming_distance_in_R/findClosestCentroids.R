findClosestCentroids <- function(X, centroids)
{
	K = nrow(centroids);
	m = nrow(X);
	idx <- rep(0, m);
	zerovector <- rep(0,K*3);
	
	A = matrix(c(zerovector), nrow=K, byrow=TRUE);


	for (ind in 1:length(idx) )
	{
		count = 0;
		for (cindex in 1:K ) 
		{
			count = count + 1;  
			x_elem = X[ind, ];
			c_elem = centroids[cindex, ];
			#hamming distance
			dist = sum(x_elem != c_elem);
			A[count,]= c(cindex, ind, dist); 
		}

		i = which.min(A[,3])
		row = A[i, ];

		idx[ind] = row[1]; #centroid with lowest distance
	}

	return (idx)

}


