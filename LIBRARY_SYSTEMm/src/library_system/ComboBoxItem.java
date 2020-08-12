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
class ComboBoxItem {
    private final String codeValue;
    private final String displayText;

    public ComboBoxItem(String code, String text) {
        this.codeValue = code;
        this.displayText = text;

    }

    /**
     * @return the codeValue
     */
    public String getCodeValue() {
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
