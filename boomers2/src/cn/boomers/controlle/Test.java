package cn.boomers.controlle;

import java.util.Random;

public class Test {

	public void abc(){
		System.out.println("aa");
	}

	public void abc(int a){
		System.out.println("aa");
	}
	public static void main(String[] args) {
		/*String str = "";
        for (int i = 0;i<3;i++){
            str = str+ (char)(Math.random()*26+'A');
        }
        System.out.println(str);*/
        
		
		String val = "";
        Random random = new Random();
        for ( int i = 0; i < 15; i++ )
        {
            String str = random.nextInt( 2 ) % 2 == 0 ? "num" : "char";
            if ( "char".equalsIgnoreCase( str ) )
            { // 产生字母
                int nextInt = random.nextInt( 2 ) % 2 == 0 ? 65 : 97;
                // System.out.println(nextInt + "!!!!"); 1,0,1,1,1,0,0
                val += (char) ( nextInt + random.nextInt( 26 ) );
            }
            else if ( "num".equalsIgnoreCase( str ) )
            { // 产生数字
                val += String.valueOf( random.nextInt( 10 ) );
            }
        }
        System.out.println(val);
	}

}
