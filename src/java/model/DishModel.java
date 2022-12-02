/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

/**
 *
 * @author chris
 */
public class DishModel {
    public static String generateDescription(File path) throws FileNotFoundException, IOException   {
        BufferedReader br = new BufferedReader(new FileReader(path));
        
        String description = "";
        String substring;
        while ((substring = br.readLine()) != null)
            description = description + "<p>"+substring+"</p>\n";
        return description;
    }
    
    public static String generateIngredients(File path) throws FileNotFoundException, IOException   {
        BufferedReader br = new BufferedReader(new FileReader(path));
        
        String ingredients = "";
        String substring;
        while ((substring = br.readLine()) != null)
            ingredients = ingredients + "<li>"+substring+"</li>\n";
        return ingredients;
    }
    
    public static String generateDirections(File path) throws FileNotFoundException, IOException   {
        BufferedReader br = new BufferedReader(new FileReader(path));
        
        String directions = "";
        String substring;
        while ((substring = br.readLine()) != null)
            directions = directions + "<li>"+substring+"</li>\n";
        return directions;
    }
    
    public static String formatName(String name)    {
        char[] nameArray = new char[name.length()];
        for (int i = 0; i < name.length(); i++)
            nameArray[i] = name.charAt(i);
        
        // replacing dash with space
        for (int i = 0; i < name.length(); i++) {
            if (nameArray[i] == '-')
                nameArray[i] = ' ';
        }
        // capitalization
        nameArray[0] -= 32;
        for (int i = 0; i < name.length(); i++) {
            if (nameArray[i] == ' ')
                nameArray[i+1] -= 32;
        }
        // join
        String fixedName = "";
        for (int i = 0; i < name.length(); i++) {
            fixedName += nameArray[i];
        }
        return fixedName;
    }
}
