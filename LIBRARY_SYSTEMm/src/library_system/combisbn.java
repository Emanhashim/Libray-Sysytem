/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package library_system;

/**
 *
 * @author cs
 */
public class combisbn {
    private final int codeValue;
    private final String displayText;

    public combisbn( String text,int code) {
        this.codeValue = code;
        this.displayText = text;

    }

    combisbn(String fcode, String fname) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    /**
     * @return the codeValue
     */
    public int getCodeValue() {
        return codeValue;
    }

    /**
     * @return the displayText
     */
    public String getDisplayText() {
        return displayText;
    }
    @Override
    public String toString(){
        return this.displayText;
    }
    
    
    
    
    
    
}
