package Recommendation;

import org.apache.mahout.cf.taste.impl.model.file.*;
import org.apache.mahout.cf.taste.impl.neighborhood.*;
import org.apache.mahout.cf.taste.impl.recommender.*;
import org.apache.mahout.cf.taste.impl.similarity.*;
import org.apache.mahout.cf.taste.model.*;
import org.apache.mahout.cf.taste.neighborhood.*;
import org.apache.mahout.cf.taste.recommender.*;
import org.apache.mahout.cf.taste.similarity.*;

import java.io.*;
import java.util.*;


public class RecommenderIntro {
	static String alert;
	
private RecommenderIntro() {
	
  }
  
  public static void main(String[] args) throws Exception {
	  
	  
	DataModel model = new FileDataModel(new File("data/data.csv"));
    UserSimilarity similarity = new PearsonCorrelationSimilarity(model);
		/* System.out.println("similarity"); */     
    UserNeighborhood neighborhood = new NearestNUserNeighborhood(5, similarity, model);
		/* System.out.println("UserNeighborhood"); */
    
    
    Recommender recommender = new GenericUserBasedRecommender(model, neighborhood, similarity);
		/* System.out.println("recommender"); */

    List<RecommendedItem> recommendations = recommender.recommend(3, 1, true); 
    
    for (RecommendedItem recommendation : recommendations) {
      System.out.println(recommendation);
      System.out.println(recommendation.getItemID());
   
 
  }

}
}