<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - TensionToTopper</title>
    <link rel="stylesheet" href="styles/main.css">
    <link rel="stylesheet" href="styles/layout.css">
    <link rel="stylesheet" href="styles/components.css">
    <link rel="stylesheet" href="styles/pages.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap">
    <script src="https://unpkg.com/lucide@latest"></script>
    <style>
        .alert {
            padding: 1rem;
            margin-bottom: 1rem;
            border-radius: 4px;
        }
        .alert-error {
            background-color: #fee2e2;
            color: #b91c1c;
            border: 1px solid #fca5a5;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header class="header">
        <div class="header-container">
            <a href="index.jsp" class="logo">
                <span>TensionToTopper</span>
            </a>
            
            <nav class="nav">
                <ul class="nav-menu">
                    <li><a href="index.jsp" class="nav-link">Home</a></li>
                    <li><a href="course-list.jsp" class="nav-link">Courses</a></li>
                    <li><a href="announcements.jsp" class="nav-link">Announcements</a></li>
                    <li><a href="login.jsp" class="nav-link">Login</a></li>
                    <li><a href="register.jsp" class="btn btn-primary">Get Started</a></li>
                </ul>
            </nav>
            
            <button class="mobile-menu-btn">
                <i data-lucide="menu"></i>
            </button>
        </div>
    </header>
    
    <!-- Mobile Menu -->
    <div class="overlay"></div>
    <div class="mobile-menu">
        <button class="mobile-menu-close">
            <i data-lucide="x"></i>
        </button>
        <ul class="mobile-nav-menu">
            <li class="mobile-nav-item"><a href="index.jsp" class="mobile-nav-link">Home</a></li>
            <li class="mobile-nav-item"><a href="course-list.jsp" class="mobile-nav-link">Courses</a></li>
            <li class="mobile-nav-item"><a href="announcements.jsp" class="mobile-nav-link">Announcements</a></li>
            <li class="mobile-nav-item"><a href="login.jsp" class="mobile-nav-link">Login</a></li>
            <li class="mobile-nav-item"><a href="register.jsp" class="mobile-nav-link active">Register</a></li>
        </ul>
    </div>
    
    <!-- Error Message Display -->
    <% 
        String errorMessage = (String) request.getAttribute("errorMessage");
        if (errorMessage != null) { 
    %>
        <div class="alert alert-error" style="max-width: 600px; margin: 20px auto;">
            <%= errorMessage %>
        </div>
    <% } %>
    
    <!-- Register Section -->
    <section class="auth-container">
        <div class="auth-card">
            <div class="auth-header">
                <h1 class="auth-title">Create an Account</h1>
                <p class="auth-description">Join TensionToTopper and start your learning journey</p>
            </div>
            
            <form id="registration-form" action="register" method="post" class="auth-form">
                <div class="form-group">
                    <label for="name" class="form-label">Full Name</label>
                    <input type="text" id="name" name="fullName" class="form-input" placeholder="Enter your full name" required>
                </div>
                
                <div class="form-group">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" id="email" name="email" class="form-input" placeholder="Enter your email" required>
                </div>
                
                <div class="form-group">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" id="password" name="password" class="form-input" placeholder="Create a password" required>
                </div>
                
                <div class="form-group">
                    <label for="role" class="form-label">Role</label>
                    <select id="role" name="role" class="form-input" required>
                        <option value="user">User</option>
                       
                    </select>
                </div>
                
                <div class="mb-4">
                    <input type="checkbox" id="terms" name="terms" class="form-checkbox" required>
                    <label for="terms">I agree to the <a href="#" class="text-primary">Terms of Service</a> and <a href="#" class="text-primary">Privacy Policy</a></label>
                </div>
                
                <button type="submit" class="btn btn-primary w-full">Create Account</button>
            </form>
            
            <div class="auth-divider">
                <span class="auth-divider-text">OR</span>
            </div>
            
            <div class="social-auth">
                <button class="social-auth-btn">
                    <i data-lucide="google" style="color: #DB4437;"></i>
                    <span>Continue with Google</span>
                </button>
                <button class="social-auth-btn">
                    <i data-lucide="facebook" style="color: #4267B2;"></i>
                    <span>Continue with Facebook</span>
                </button>
            </div>
            
            <div class="auth-footer">
                <p>Already have an account? <a href="login.jsp" class="auth-link">Sign in</a></p>
            </div>
        </div>
    </section>
    
    <!-- Footer -->
    <footer class="footer">
        <div class="footer-container">
            <div class="footer-grid">
                <div>
                    <a href="index.jsp" class="footer-logo">TensionToTopper</a>
                    <p class="footer-description">Transforming academic tension into success through comprehensive e-learning solutions.</p>
                    <div class="social-links">
                        <a href="#" class="social-link"><i data-lucide="facebook"></i></a>
                        <a href="#" class="social-link"><i data-lucide="twitter"></i></a>
                        <a href="#" class="social-link"><i data-lucide="instagram"></i></a>
                        <a href="#" class="social-link"><i data-lucide="youtube"></i></a>
                    </div>
                </div>
                
                <div>
                    <h3 class="footer-heading">Quick Links</h3>
                    <ul class="footer-links">
                        <li class="footer-link"><a href="index.jsp">Home</a></li>
                        <li class="footer-link"><a href="course-list.jsp">Courses</a></li>
                        <li class="footer-link"><a href="announcements.jsp">Announcements</a></li>
                        <li class="footer-link"><a href="#">About Us</a></li>
                        <li class="footer-link"><a href="#">Contact</a></li>
                    </ul>
                </div>
                
                <div>
                    <h3 class="footer-heading">Support</h3>
                    <ul class="footer-links">
                        <li class="footer-link"><a href="#">Help Center</a></li>
                        <li class="footer-link"><a href="#">FAQs</a></li>
                        <li class="footer-link"><a href="#">Community</a></li>
                        <li class="footer-link"><a href="#">Feedback</a></li>
                    </ul>
                </div>
                
                <div>
                    <h3 class="footer-heading">Contact Us</h3>
                    <ul class="footer-links">
                        <li class="footer-link"><a href="mailto:info@tensiontopper.com">info@tensiontopper.com</a></li>
                        <li class="footer-link"><a href="tel:+919876543210">9862130504</a></li>
                        <li class="footer-link"><a href="#">Dharan, Nepal</a></li>
                    </ul>
                </div>
            </div>
            
            <div class="footer-bottom">
                <p>&copy; 2023 TensionToTopper. All rights reserved.</p>
            </div>
        </div>
    </footer>
    
    <script>
        // Initialize Lucide icons
        lucide.createIcons();
        
        // Mobile menu toggle
        const mobileMenuBtn = document.querySelector('.mobile-menu-btn');
        const mobileMenuClose = document.querySelector('.mobile-menu-close');
        const mobileMenu = document.querySelector('.mobile-menu');
        const overlay = document.querySelector('.overlay');
        
        mobileMenuBtn.addEventListener('click', () => {
            mobileMenu.classList.add('open');
            overlay.classList.add('open');
            document.body.style.overflow = 'hidden';
        });
        
        mobileMenuClose.addEventListener('click', () => {
            mobileMenu.classList.remove('open');
            overlay.classList.remove('open');
            document.body.style.overflow = '';
        });
        
        overlay.addEventListener('click', () => {
            mobileMenu.classList.remove('open');
            overlay.classList.remove('open');
            document.body.style.overflow = '';
        });
    </script>
</body>
</html>