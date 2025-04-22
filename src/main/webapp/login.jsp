<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - TensionToTopper</title>
    <link rel="stylesheet" href="styles/main.css">
    <link rel="stylesheet" href="styles/layout.css">
    <link rel="stylesheet" href="styles/components.css">
    <link rel="stylesheet" href="styles/pages.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
    <script src="https://unpkg.com/lucide@latest"></script>
</head>
<body>

<!-- Header -->
<header class="header">
    <div class="header-container">
        <a href="index.jsp" class="logo">TensionToTopper</a>
        <nav class="nav">
            <ul class="nav-menu">
                <li><a href="index.jsp" class="nav-link">Home</a></li>
                <li><a href="course-list.jsp" class="nav-link">Courses</a></li>
                <li><a href="announcements.jsp" class="nav-link">Announcements</a></li>
                <li><a href="login.jsp" class="nav-link active">Login</a></li>
                <li><a href="register.jsp" class="btn btn-primary">Get Started</a></li>
            </ul>
        </nav>
        <button class="mobile-menu-btn"><i data-lucide="menu"></i></button>
    </div>
</header>

<!-- Mobile Menu -->
<div class="overlay"></div>
<div class="mobile-menu">
    <button class="mobile-menu-close"><i data-lucide="x"></i></button>
    <ul class="mobile-nav-menu">
        <li><a href="index.jsp" class="mobile-nav-link">Home</a></li>
        <li><a href="course-list.jsp" class="mobile-nav-link">Courses</a></li>
        <li><a href="announcements.jsp" class="mobile-nav-link">Announcements</a></li>
        <li><a href="login.jsp" class="mobile-nav-link active">Login</a></li>
        <li><a href="register.jsp" class="mobile-nav-link">Register</a></li>
    </ul>
</div>

<!-- Login Form -->
<section class="auth-container">
    <div class="auth-card">
        <div class="auth-header">
            <h1 class="auth-title">Welcome Back</h1>
            <p class="auth-description">Sign in to continue your learning journey</p>
        </div>

        <form action="LoginServlet" method="post" class="auth-form">
            <div class="form-group">
                <label for="email" class="form-label">Email</label>
                <input type="email" id="email" name="email" class="form-input" placeholder="Enter your email" required>
            </div>

            <div class="form-group">
                <label for="password" class="form-label">Password</label>
                <input type="password" id="password" name="password" class="form-input" placeholder="Enter your password" required>
            </div>

            <div class="form-group">
                <label for="role" class="form-label">Role</label>
                <select id="role" name="role" class="form-input" required>
                    <option value="">-- Select Role --</option>
                    <option value="user">User</option>
                    <option value="admin">Admin</option>
                    
                </select>
            </div>

            <div class="form-group flex justify-between items-center">
                <div>
                    <input type="checkbox" id="remember" name="remember" class="form-checkbox">
                    <label for="remember">Remember me</label>
                </div>
                <a href="#" class="text-sm text-primary">Forgot password?</a>
            </div>

            <button type="submit" class="btn btn-primary w-full">Sign In</button>
        </form>

        <div class="auth-divider"><span class="auth-divider-text">OR</span></div>

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
            <p>Don't have an account? <a href="register.jsp" class="auth-link">Sign up</a></p>
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
                    <a href="#"><i data-lucide="facebook"></i></a>
                    <a href="#"><i data-lucide="twitter"></i></a>
                    <a href="#"><i data-lucide="instagram"></i></a>
                    <a href="#"><i data-lucide="youtube"></i></a>
                </div>
            </div>

            <div>
                <h3 class="footer-heading">Quick Links</h3>
                <ul class="footer-links">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="course-list.jsp">Courses</a></li>
                    <li><a href="announcements.jsp">Announcements</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>

            <div>
                <h3 class="footer-heading">Support</h3>
                <ul class="footer-links">
                    <li><a href="#">Help Center</a></li>
                    <li><a href="#">FAQs</a></li>
                    <li><a href="#">Community</a></li>
                    <li><a href="#">Feedback</a></li>
                </ul>
            </div>

            <div>
                <h3 class="footer-heading">Contact Us</h3>
                <ul class="footer-links">
                    <li><a href="mailto:info@tensiontopper.com">info@tensiontopper.com</a></li>
                    <li><a href="tel:+9779862130504">9862130504</a></li>
                    <li><a href="#">Dharan, Nepal</a></li>
                </ul>
            </div>
        </div>

        <div class="footer-bottom">
            <p>&copy; 2025 TensionToTopper. All rights reserved.</p>
        </div>
    </div>
</footer>

<script>
    lucide.createIcons();

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
