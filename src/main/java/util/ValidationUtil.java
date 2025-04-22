package util;

import java.util.regex.Pattern;

public class ValidationUtil {
    
    private static final String EMAIL_REGEX = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
    private static final Pattern EMAIL_PATTERN = Pattern.compile(EMAIL_REGEX);
    
    public static boolean isValidEmail(String email) {
        if (email == null) {
            return false;
        }
        return EMAIL_PATTERN.matcher(email).matches();
    }
    
    public static boolean isValidPassword(String password) {
        // Password must be at least 6 characters long
        return password != null && password.length() >= 6;
    }
    
    public static boolean isValidName(String name) {
        // Name must be at least 2 characters long and contain only letters and spaces
        return name != null && name.length() >= 2 && name.matches("[a-zA-Z ]+");
    }
    
    public static boolean isValidPrice(double price) {
        // Price must be positive
        return price >= 0;
    }
}