<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TensionToTopper - Transform Your Learning Journey</title>
    <link rel="stylesheet" href="styles/main.css">
    <link rel="stylesheet" href="styles/layout.css">
    <link rel="stylesheet" href="styles/components.css">
    <link rel="stylesheet" href="styles/pages.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap">
    <script src="https://unpkg.com/lucide@latest"></script>
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
                    <li><a href="index.jsp" class="nav-link active">Home</a></li>
                    <li><a href="courselist.jsp" class="nav-link">Courses</a></li>
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
            <li class="mobile-nav-item"><a href="index.jsp" class="mobile-nav-link active">Home</a></li>
            <li class="mobile-nav-item"><a href="course-list.jsp" class="mobile-nav-link">Courses</a></li>
            <li class="mobile-nav-item"><a href="announcements.jsp" class="mobile-nav-link">Announcements</a></li>
            <li class="mobile-nav-item"><a href="login.jsp" class="mobile-nav-link">Login</a></li>
            <li class="mobile-nav-item"><a href="register.jsp" class="mobile-nav-link">Register</a></li>
        </ul>
    </div>
    
    <!-- Hero Section -->
    <section class="hero">
        <div class="container hero-container">
            <div class="hero-content">
                <h1 class="hero-title">From Tension to Topper: Transform Your Learning Journey</h1>
                <p class="hero-description">Join thousands of students who have turned their academic stress into success with our comprehensive e-learning platform.</p>
                <div class="hero-buttons">
                    <a href="register.jsp" class="btn btn-primary btn-lg">Get Started</a>
                    <a href="course-list.jsp" class="btn btn-outline btn-lg">Explore Courses</a>
                </div>
            </div>
            <div class="hero-image">
                <img src="https://images.unsplash.com/photo-1523240795612-9a054b0db644?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Students learning online">
            </div>
        </div>
    </section>
    
    <!-- Features Section -->
    <section class="features">
        <div class="container">
            <div class="features-header">
                <h2 class="features-title">Why Choose TensionToTopper?</h2>
                <p class="features-description">Our platform is designed to help you overcome academic challenges and achieve your full potential.</p>
            </div>
            
            <div class="features-grid">
                <div class="feature-card">
                    <i data-lucide="book-open" class="feature-icon"></i>
                    <h3 class="feature-title">Comprehensive Curriculum</h3>
                    <p class="feature-description">Access a wide range of courses designed by expert educators to cover all aspects of your academic needs.</p>
                </div>
                
                <div class="feature-card">
                    <i data-lucide="play" class="feature-icon"></i>
                    <h3 class="feature-title">Interactive Learning</h3>
                    <p class="feature-description">Engage with interactive content, quizzes, and assignments that make learning enjoyable and effective.</p>
                </div>
                
                <div class="feature-card">
                    <i data-lucide="users" class="feature-icon"></i>
                    <h3 class="feature-title">Community Support</h3>
                    <p class="feature-description">Join a community of learners and educators who are committed to helping each other succeed.</p>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Popular Courses Section -->
    <section class="popular-courses">
        <div class="container">
            <div class="popular-courses-header">
                <h2 class="popular-courses-title">Popular Courses</h2>
                <p class="popular-courses-description">Discover our most sought-after courses that have helped students excel.</p>
            </div>
            
            <div class="grid md:grid-cols-3 sm:grid-cols-2 grid-cols-1">
                <!-- Course Card 1 -->
                <div class="course-card">
                    <img src="https://images.unsplash.com/photo-1503676260728-1c00da094a0b?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Mathematics" class="course-card-image">
                    <div class="course-card-content">
                        <h3 class="course-card-title">Advanced Mathematics</h3>
                        <p class="course-card-instructor">By Prof. Sarah Johnson</p>
                        <p class="course-card-description">Master complex mathematical concepts with our comprehensive course designed for high school and college students.</p>
                        <div class="course-card-meta">
                            <div class="course-card-rating">
                                <i data-lucide="star"></i>
                                <span>4.9 (128)</span>
                            </div>
                            <div class="course-card-price">₹1,499</div>
                        </div>
                    </div>
                    <div class="course-card-footer">
                        <div class="course-card-stats">
                            <div class="course-card-stat">
                                <i data-lucide="clock"></i>
                                <span>48 hours</span>
                            </div>
                            <div class="course-card-stat">
                                <i data-lucide="users"></i>
                                <span>2,456 students</span>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Course Card 2 -->
                <div class="course-card">
                    <img src="https://images.unsplash.com/photo-1516321318423-f06f85e504b3?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Physics" class="course-card-image">
                    <div class="course-card-content">
                        <h3 class="course-card-title">Physics Fundamentals</h3>
                        <p class="course-card-instructor">By Dr. Robert Chen</p>
                        <p class="course-card-description">Build a strong foundation in physics with practical examples and interactive experiments.</p>
                        <div class="course-card-meta">
                            <div class="course-card-rating">
                                <i data-lucide="star"></i>
                                <span>4.8 (96)</span>
                            </div>
                            <div class="course-card-price">₹1,299</div>
                        </div>
                    </div>
                    <div class="course-card-footer">
                        <div class="course-card-stats">
                            <div class="course-card-stat">
                                <i data-lucide="clock"></i>
                                <span>36 hours</span>
                            </div>
                            <div class="course-card-stat">
                                <i data-lucide="users"></i>
                                <span>1,892 students</span>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Course Card 3 -->
                <div class="course-card">
                    <img src="https://images.unsplash.com/photo-1532094349884-543bc11b234d?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Chemistry" class="course-card-image">
                    <div class="course-card-content">
                        <h3 class="course-card-title">Chemistry Made Easy</h3>
                        <p class="course-card-instructor">By Prof. Emily Wong</p>
                        <p class="course-card-description">Learn chemistry concepts through visual explanations and practical applications.</p>
                        <div class="course-card-meta">
                            <div class="course-card-rating">
                                <i data-lucide="star"></i>
                                <span>4.7 (112)</span>
                            </div>
                            <div class="course-card-price">₹1,199</div>
                        </div>
                    </div>
                    <div class="course-card-footer">
                        <div class="course-card-stats">
                            <div class="course-card-stat">
                                <i data-lucide="clock"></i>
                                <span>42 hours</span>
                            </div>
                            <div class="course-card-stat">
                                <i data-lucide="users"></i>
                                <span>2,104 students</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="text-center mt-6">
                <a href="course-list.jsp" class="btn btn-outline">View All Courses</a>
            </div>
        </div>
    </section>
    
    <!-- Testimonials Section -->
    <section class="testimonials">
        <div class="container">
            <div class="testimonials-header">
                <h2 class="testimonials-title">What Our Students Say</h2>
                <p class="testimonials-description">Hear from students who have transformed their academic journey with TensionToTopper.</p>
            </div>
            
            <div class="testimonials-grid">
                <!-- Testimonial 1 -->
                <div class="testimonial">
                    <p class="testimonial-content">"TensionToTopper helped me overcome my fear of mathematics. The step-by-step explanations and practice problems made complex concepts easy to understand."</p>
                    <div class="testimonial-author">
                        <img src="https://randomuser.me/api/portraits/women/32.jpg" alt="Priya Sharma" class="testimonial-avatar">
                        <div class="testimonial-info">
                            <div class="testimonial-name">Priya Sharma</div>
                            <div class="testimonial-role">Engineering Student</div>
                        </div>
                    </div>
                </div>
                
                <!-- Testimonial 2 -->
                <div class="testimonial">
                    <p class="testimonial-content">"The interactive learning approach and community support have been game-changers for me. I went from struggling to being one of the top performers in my class."</p>
                    <div class="testimonial-author">
                        <img src="https://randomuser.me/api/portraits/men/45.jpg" alt="Rahul Patel" class="testimonial-avatar">
                        <div class="testimonial-info">
                            <div class="testimonial-name">Rahul Patel</div>
                            <div class="testimonial-role">High School Student</div>
                        </div>
                    </div>
                </div>
                
                <!-- Testimonial 3 -->
                <div class="testimonial">
                    <p class="testimonial-content">"As a working professional, I needed a flexible learning solution. TensionToTopper's self-paced courses and mobile accessibility made it possible for me to upskill while managing my job."</p>
                    <div class="testimonial-author">
                        <img src="https://randomuser.me/api/portraits/women/68.jpg" alt="Ananya Gupta" class="testimonial-avatar">
                        <div class="testimonial-info">
                            <div class="testimonial-name">Ananya Gupta</div>
                            <div class="testimonial-role">IT Professional</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- CTA Section -->
    <section class="cta">
        <div class="container">
            <div class="cta-content">
                <h2 class="cta-title">Ready to Transform Your Learning Journey?</h2>
                <p class="cta-description">Join thousands of students who have turned their academic tension into success.</p>
                <a href="register.jsp" class="btn btn-lg" style="background-color: white; color: var(--primary);">Get Started Today</a>
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
                        <li class="footer-link"><a href="#">Dharan , Nepal</a></li>
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