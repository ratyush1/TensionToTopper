<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Announcements - TensionToTopper</title>
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
                    <li><a href="index.jsp" class="nav-link">Home</a></li>
                    <li><a href="course-list.jsp" class="nav-link">Courses</a></li>
                    <li><a href="announcements.jsp" class="nav-link active">Announcements</a></li>
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
            <li class="mobile-nav-item"><a href="announcements.jsp" class="mobile-nav-link active">Announcements</a></li>
            <li class="mobile-nav-item"><a href="login.jsp" class="mobile-nav-link">Login</a></li>
            <li class="mobile-nav-item"><a href="register.jsp" class="mobile-nav-link">Register</a></li>
        </ul>
    </div>
    
    <!-- Main Content -->
    <main class="main">
        <div class="container">
            <div class="flex justify-between items-center mb-6 flex-wrap gap-4">
                <h1 class="text-2xl font-bold">Announcements</h1>
                
                <div class="flex gap-4 items-center">
                    <div class="relative">
                        <input type="text" placeholder="Search announcements..." class="form-input pr-10">
                        <button class="absolute right-3 top-1/2 transform -translate-y-1/2">
                            <i data-lucide="search" class="w-5 h-5 text-muted-foreground"></i>
                        </button>
                    </div>
                    
                    <div>
                        <select class="form-select">
                            <option value="">All Categories</option>
                            <option value="course-updates">Course Updates</option>
                            <option value="events">Events</option>
                            <option value="promotions">Promotions</option>
                            <option value="system">System Updates</option>
                        </select>
                    </div>
                </div>
            </div>
            
            <!-- Announcements List -->
            <div class="grid grid-cols-1 gap-6">
                <!-- Announcement 1 -->
                <div class="announcement-card">
                    <div class="announcement-card-header">
                        <div class="announcement-card-badge course-update">Course Update</div>
                        <h2 class="announcement-card-title">New Physics Module Released</h2>
                        <div class="announcement-card-meta">
                            <div class="announcement-card-date">
                                <i data-lucide="calendar"></i>
                                <span>June 15, 2023</span>
                            </div>
                            <div class="announcement-card-author">
                                <i data-lucide="user"></i>
                                <span>Dr. Robert Chen</span>
                            </div>
                        </div>
                    </div>
                    
                    <div class="announcement-card-content">
                        <p>We're excited to announce the release of a new module on Quantum Mechanics in the Physics Fundamentals course. This module covers the following topics:</p>
                        
                        <ul class="list-disc pl-6 my-4">
                            <li>Introduction to Quantum Theory</li>
                            <li>Wave-Particle Duality</li>
                            <li>Schrödinger's Equation</li>
                            <li>Quantum Tunneling</li>
                            <li>Practical Applications of Quantum Mechanics</li>
                        </ul>
                        
                        <p>This module includes 5 video lectures, 3 interactive simulations, and a comprehensive quiz to test your understanding. All enrolled students can access this module immediately.</p>
                    </div>
                    
                    <div class="announcement-card-footer">
                        <a href="course-detail.jsp" class="btn btn-primary">View Course</a>
                    </div>
                </div>
                
                <!-- Announcement 2 -->
                <div class="announcement-card">
                    <div class="announcement-card-header">
                        <div class="announcement-card-badge event">Event</div>
                        <h2 class="announcement-card-title">Upcoming Live Session: Math Problem Solving</h2>
                        <div class="announcement-card-meta">
                            <div class="announcement-card-date">
                                <i data-lucide="calendar"></i>
                                <span>June 12, 2023</span>
                            </div>
                            <div class="announcement-card-author">
                                <i data-lucide="user"></i>
                                <span>Prof. Sarah Johnson</span>
                            </div>
                        </div>
                    </div>
                    
                    <div class="announcement-card-content">
                        <p>Join us for a live problem-solving session on Advanced Calculus this Friday at 6 PM IST. Prof. Sarah Johnson will walk through complex calculus problems and answer your questions in real-time.</p>
                        
                        <div class="event-details my-4">
                            <div class="event-detail">
                                <i data-lucide="calendar"></i>
                                <span>Date: June 16, 2023</span>
                            </div>
                            <div class="event-detail">
                                <i data-lucide="clock"></i>
                                <span>Time: 6:00 PM - 7:30 PM IST</span>
                            </div>
                            <div class="event-detail">
                                <i data-lucide="video"></i>
                                <span>Platform: Zoom (link will be shared with registered participants)</span>
                            </div>
                        </div>
                        
                        <p>This session is open to all students enrolled in the Advanced Mathematics course. Please prepare your questions in advance to make the most of this interactive session.</p>
                    </div>
                    
                    <div class="announcement-card-footer">
                        <a href="#" class="btn btn-primary">Register for Session</a>
                    </div>
                </div>
                
                <!-- Announcement 3 -->
                <div class="announcement-card">
                    <div class="announcement-card-header">
                        <div class="announcement-card-badge promotion">Promotion</div>
                        <h2 class="announcement-card-title">Summer Sale: 30% Off on All Science Courses</h2>
                        <div class="announcement-card-meta">
                            <div class="announcement-card-date">
                                <i data-lucide="calendar"></i>
                                <span>June 10, 2023</span>
                            </div>
                            <div class="announcement-card-author">
                                <i data-lucide="user"></i>
                                <span>TensionToTopper Team</span>
                            </div>
                        </div>
                    </div>
                    
                    <div class="announcement-card-content">
                        <p>Summer is here, and it's the perfect time to expand your knowledge! We're offering a special 30% discount on all Science courses for a limited time.</p>
                        
                        <div class="promo-details my-4">
                            <div class="promo-detail">
                                <i data-lucide="tag"></i>
                                <span>Discount: 30% off</span>
                            </div>
                            <div class="promo-detail">
                                <i data-lucide="calendar"></i>
                                <span>Valid from: June 10 to June 30, 2023</span>
                            </div>
                            <div class="promo-detail">
                                <i data-lucide="code"></i>
                                <span>Coupon Code: SUMMER30</span>
                            </div>
                        </div>
                        
                        <p>This offer applies to all Physics, Chemistry, and Biology courses. Simply enter the coupon code at checkout to claim your discount. Don't miss this opportunity to invest in your education at a reduced price!</p>
                    </div>
                    
                    <div class="announcement-card-footer">
                        <a href="course-list.jsp" class="btn btn-primary">Browse Courses</a>
                    </div>
                </div>
                
                <!-- Announcement 4 -->
                <div class="announcement-card">
                    <div class="announcement-card-header">
                        <div class="announcement-card-badge system">System Update</div>
                        <h2 class="announcement-card-title">Platform Maintenance Scheduled</h2>
                        <div class="announcement-card-meta">
                            <div class="announcement-card-date">
                                <i data-lucide="calendar"></i>
                                <span>June 8, 2023</span>
                            </div>
                            <div class="announcement-card-author">
                                <i data-lucide="user"></i>
                                <span>Technical Support Team</span>
                            </div>
                        </div>
                    </div>
                    
                    <div class="announcement-card-content">
                        <p>We will be performing scheduled maintenance on our platform to improve performance and add new features. During this time, the website and mobile app will be temporarily unavailable.</p>
                        
                        <div class="maintenance-details my-4">
                            <div class="maintenance-detail">
                                <i data-lucide="calendar"></i>
                                <span>Date: June 18, 2023</span>
                            </div>
                            <div class="maintenance-detail">
                                <i data-lucide="clock"></i>
                                <span>Time: 2:00 AM - 5:00 AM IST</span>
                            </div>
                            <div class="maintenance-detail">
                                <i data-lucide="info"></i>
                                <span>Expected downtime: 3 hours</span>
                            </div>
                        </div>
                        
                        <p>We apologize for any inconvenience this may cause. We've scheduled the maintenance during off-peak hours to minimize disruption. Thank you for your understanding as we work to improve your learning experience.</p>
                    </div>
                    
                    <div class="announcement-card-footer">
                        <a href="#" class="btn btn-outline">Contact Support</a>
                    </div>
                </div>
            </div>
            
            <!-- Pagination -->
            <div class="flex justify-center mt-10">
                <div class="flex gap-2">
                    <a href="#" class="btn btn-ghost">
                        <i data-lucide="chevron-left"></i>
                    </a>
                    <a href="#" class="btn btn-primary">1</a>
                    <a href="#" class="btn btn-ghost">2</a>
                    <a href="#" class="btn btn-ghost">3</a>
                    <a href="#" class="btn btn-ghost">
                        <i data-lucide="chevron-right"></i>
                    </a>
                </div>
            </div>
        </div>
    </main>
    
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