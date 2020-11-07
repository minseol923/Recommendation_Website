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
		/* System.out.println("similarity"); */ //similarity => user들간의 유사도 계산
    
    UserNeighborhood neighborhood = new NearestNUserNeighborhood(5, similarity, model); //나랑 가까운 사람이 몇명인지
		/* System.out.println("UserNeighborhood"); */
    
    
    Recommender recommender = new GenericUserBasedRecommender(model, neighborhood, similarity);
		/* System.out.println("recommender"); */

    List<RecommendedItem> recommendations = recommender.recommend(3, 1, true); //10번 유저에게 3개의 추천시스템 
    
    for (RecommendedItem recommendation : recommendations) {
      System.out.println(recommendation);
      System.out.println(recommendation.getItemID());
      if(recommendation.getItemID() == 0){
	  		alert = "당신에게 맞는 취미는 스포츠 입니다.";
	  	}else if(recommendation.getItemID() == 1){
	  		alert = "당신에게 맞는 취미는 DIY입니다.";
	  	}else if(recommendation.getItemID() == 2){
	  		alert = "당신에게 맞는 취미는 요리입니다.";
	  	}
	  	else if(recommendation.getItemID() == 3){
	  		alert = "당신에게 맞는 취미는 언어배우기 입니다.";
	  	}
	  	else if(recommendation.getItemID() == 4){
	  		alert = "당신에게 맞는 취미는 사진/영상 입니다.";
	  	}
	  	else if(recommendation.getItemID() == 5){
	  		alert = "당신에게 맞는 취미는 미술 입니다.";
	  	}
	  	else if(recommendation.getItemID() == 6){
	  		alert = "당신에게 맞는 취미는 언어배우기 입니다.";
	  	}
	  	else if(recommendation.getItemID() == 7){
	  		alert = "당신에게 맞는 취미는 스포츠입니다.";
	  	}
	  	else if(recommendation.getItemID() == 8){
	  		alert = "당신에게 맞는 취미는 음악 입니다.";
	  	}
	  	else if(recommendation.getItemID() == 9){
	  		alert = "당신에게 맞는 취미는 DIY 입니다.";
	  	}
	  	else if(recommendation.getItemID() == 10){
	  		alert = "당신에게 맞는 취미는 음악 입니다.";
	  	}
	  	else if(recommendation.getItemID() == 11){
	  		alert = "당신에게 맞는 취미는 DIY 입니다.";
	  	}

    }
   
    
 
  }

}
