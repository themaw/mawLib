package maw.jit;

public class TTT {

    public static void main(String[] args) {

        
        
        // flip = 0 ;// normal vert , normal horz
        // flip = 1 ;// flipped ver, normal horz
        // flip = 2 ;// normal vert, flipped horz
        // flip = 3 ;// flip vert, flip horz
        int flip;
        int a ;
        
        /*
        flip = 0;
        a = (flip & 0x02);      // 
        System.out.println(Integer.toBinaryString(flip) + " " + Integer.toBinaryString(0x01));
        System.out.println(a);

        flip = 1;
        a = (flip & 0x02);      // 
        System.out.println(Integer.toBinaryString(flip) + " " + Integer.toBinaryString(0x01));
        System.out.println(a);
        
        flip = 2;
        a = (flip & 0x02);      // 
        System.out.println(Integer.toBinaryString(flip) + " " + Integer.toBinaryString(0x01));
        System.out.println(a);
        
        flip = 3;
        a = (flip & 0x02);      // 
        System.out.println(Integer.toBinaryString(flip) + " " + Integer.toBinaryString(0x01));
        System.out.println(a);
        */
        boolean mirrorHorizontal = true;
        boolean mirrorVertical = false;
        
        if (mirrorHorizontal) {
            if (mirrorVertical) {
                flip = 3;
            } else {
                flip = 2;
            }
        } else {
            if (mirrorVertical) {
                flip = 1;
            } else {
                flip = 0;
            }
        }
        
        boolean isHorizontal = (flip & 0x02) > 0;
        boolean isVertical = (flip & 0x01) > 0;
        
        flip=flip|0x01; 

        //boolean isHorizontal = (flip & 0x02) > 0;
        //boolean isVertical = (flip & 0x01) > 0;
 
        
        System.out.println(isHorizontal + " " + isVertical + " flip = " + flip);
        
        
    }

}