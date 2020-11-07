package Recommend;

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

class RecommenderIntro {

	private RecommenderIntro() {
	  }

	  public static void main(String[] args) throws Exception {
	     
	   DataModel model = new FileDataModel(new File("C:/UserData/data.csv"));
	    UserSimilarity similarity = new PearsonCorrelationSimilarity(model);
	    System.out.println("similarity"); //similarity => user들간의 유사도 계산
	    
	    UserNeighborhood neighborhood = new NearestNUserNeighborhood(5, similarity, model); //나랑 가까운 사람이 몇명인지
	    System.out.println("UserNeighborhood");
	    
	    
	    Recommender recommender = new GenericUserBasedRecommender(model, neighborhood, similarity);
	    System.out.println("recommender");

	    List<RecommendedItem> recommendations = recommender.recommend(2, 1, true); //10번 유저에게 3개의 추천시스템 
	    for (RecommendedItem recommendation : recommendations) {
	      System.out.println(recommendation);
	    }

	  }

}
