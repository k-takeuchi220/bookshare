package work.toook.util;


import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class InputCheckerProhibited {

	int min;
	int max;

//	禁止文字、文字数制限
	public List<String> doProhibitedCharactersCheck(String title,String introduction){
		List<String> stringList = new ArrayList<String>();
		String value[] = {"タイトル","紹介文"};
		String contents[] = {title,introduction};

	    //判定する文字列
		for(int o = 0;o<2;o++) {



//	    --入力欄が空か判定する--
//		if(contents[o].isEmpty()){
//			stringList.add(value[o] + "を入力してください。");
//		}


//		--文字数を制限する--
//		　　　　　　　タイトル(最小、最大)、紹介文(最小、最大)
		int restriction[][] = {{1,15},{30,150}};

				if(contents[o].length() < restriction[o][0] || contents[o].length() > restriction[o][1]){
					stringList.add(value[o] + "は" + restriction[o][0] + "文字以上" + restriction[o][1] + "文字以下で入力してください。");
				}







//		--入力禁止文字指定--
//		"^(?=.*指定したい文字列).*$"
	    String word[] = {"^(?=.*ばか).*$","^(?=.*あほ).*$","^(?=.*まぬけ).*$","^(?=.*バカ).*$","^(?=.*馬鹿).*$","^(?=.*死ね).*$","^(?=.*しね).*$",
	    		"^(?=.*うんこ).*$","^(?=.*うんち).*$","^(?=.*はげ).*$","^(?=.*糞).*$"};

    for(String i:word){
//    	System.out.println(word[i]);
	    Pattern p = Pattern.compile(i);
	    Matcher m = p.matcher(contents[o]);

//		禁止文字が含まれているか判定する
	    if(m.find()) {
	    	stringList.add("禁止文字が含まれています。");
	    	return stringList;
    }



	    }

	}
		return stringList;
	}




}
