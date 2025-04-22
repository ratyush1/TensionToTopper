<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course List - TensionToTopper</title>
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
                    <li><a href="course-list.jsp" class="nav-link active">Courses</a></li>
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
            <li class="mobile-nav-item"><a href="course-list.jsp" class="mobile-nav-link active">Courses</a></li>
            <li class="mobile-nav-item"><a href="announcements.jsp" class="mobile-nav-link">Announcements</a></li>
            <li class="mobile-nav-item"><a href="login.jsp" class="mobile-nav-link">Login</a></li>
            <li class="mobile-nav-item"><a href="register.jsp" class="mobile-nav-link">Register</a></li>
        </ul>
    </div>
    
    <!-- Main Content -->
    <main class="main">
        <div class="container">
            <div class="flex justify-between items-center mb-6 flex-wrap gap-4">
                <h1 class="text-2xl font-bold">Explore Courses</h1>
                
                <div class="flex gap-4 items-center">
                    <div class="relative">
                        <input type="text" placeholder="Search courses..." class="form-input pr-10">
                        <button class="absolute right-3 top-1/2 transform -translate-y-1/2">
                            <i data-lucide="search" class="w-5 h-5 text-muted-foreground"></i>
                        </button>
                    </div>
                    
                    <div>
                        <select class="form-select">
                            <option value="">All Categories</option>
                            <option value="mathematics">Mathematics</option>
                            <option value="science">Science</option>
                            <option value="computer-science">Computer Science</option>
                            <option value="language">Language</option>
                            <option value="humanities">Humanities</option>
                        </select>
                    </div>
                </div>
            </div>
            
            <!-- Featured Courses -->
            <div class="mb-10">
                <h2 class="text-xl font-bold mb-4">Featured Courses</h2>
                
                <div class="grid lg:grid-cols-4 md:grid-cols-3 sm:grid-cols-2 grid-cols-1 gap-6">
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
                    
                    <!-- Course Card 4 -->
                    <div class="course-card">
                        <img src="https://images.unsplash.com/photo-1517694712202-14dd9538aa97?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Computer Science" class="course-card-image">
                        <div class="course-card-content">
                            <h3 class="course-card-title">Introduction to Programming</h3>
                            <p class="course-card-instructor">By Dr. Alex Kumar</p>
                            <p class="course-card-description">Start your coding journey with this beginner-friendly programming course.</p>
                            <div class="course-card-meta">
                                <div class="course-card-rating">
                                    <i data-lucide="star"></i>
                                    <span>4.8 (156)</span>
                                </div>
                                <div class="course-card-price">₹1,399</div>
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
                                    <span>3,210 students</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Mathematics Courses -->
            <div class="mb-10">
                <h2 class="text-xl font-bold mb-4">Mathematics</h2>
                
                <div class="grid lg:grid-cols-4 md:grid-cols-3 sm:grid-cols-2 grid-cols-1 gap-6">
                    <!-- Course Card 1 -->
                    <div class="course-card">
                        <img src="https://images.unsplash.com/photo-1509228468518-180dd4864904?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Calculus" class="course-card-image">
                        <div class="course-card-content">
                            <h3 class="course-card-title">Calculus Mastery</h3>
                            <p class="course-card-instructor">By Prof. David Wilson</p>
                            <p class="course-card-description">Master differential and integral calculus with step-by-step explanations and practice problems.</p>
                            <div class="course-card-meta">
                                <div class="course-card-rating">
                                    <i data-lucide="star"></i>
                                    <span>4.7 (89)</span>
                                </div>
                                <div class="course-card-price">₹1,299</div>
                            </div>
                        </div>
                        <div class="course-card-footer">
                            <div class="course-card-stats">
                                <div class="course-card-stat">
                                    <i data-lucide="clock"></i>
                                    <span>40 hours</span>
                                </div>
                                <div class="course-card-stat">
                                    <i data-lucide="users"></i>
                                    <span>1,756 students</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Course Card 2 -->
                    <div class="course-card">
                        <img src="https://images.unsplash.com/photo-1635070041078-e363dbe005cb?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Algebra" class="course-card-image">
                        <div class="course-card-content">
                            <h3 class="course-card-title">Algebra Fundamentals</h3>
                            <p class="course-card-instructor">By Prof. Lisa Chen</p>
                            <p class="course-card-description">Build a strong foundation in algebra with clear explanations and plenty of practice problems.</p>
                            <div class="course-card-meta">
                                <div class="course-card-rating">
                                    <i data-lucide="star"></i>
                                    <span>4.9 (124)</span>
                                </div>
                                <div class="course-card-price">₹999</div>
                            </div>
                        </div>
                        <div class="course-card-footer">
                            <div class="course-card-stats">
                                <div class="course-card-stat">
                                    <i data-lucide="clock"></i>
                                    <span>32 hours</span>
                                </div>
                                <div class="course-card-stat">
                                    <i data-lucide="users"></i>
                                    <span>2,345 students</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Course Card 3 -->
                    <div class="course-card">
                        <img src="https://images.unsplash.com/photo-1544961371-516024f8e267?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Geometry" class="course-card-image">
                        <div class="course-card-content">
                            <h3 class="course-card-title">Geometry Essentials</h3>
                            <p class="course-card-instructor">By Dr. Michael Brown</p>
                            <p class="course-card-description">Learn geometric principles and theorems with interactive visualizations and problem-solving techniques.</p>
                            <div class="course-card-meta">
                                <div class="course-card-rating">
                                    <i data-lucide="star"></i>
                                    <span>4.6 (78)</span>
                                </div>
                                <div class="course-card-price">₹1,099</div>
                            </div>
                        </div>
                        <div class="course-card-footer">
                            <div class="course-card-stats">
                                <div class="course-card-stat">
                                    <i data-lucide="clock"></i>
                                    <span>28 hours</span>
                                </div>
                                <div class="course-card-stat">
                                    <i data-lucide="users"></i>
                                    <span>1,432 students</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Course Card 4 -->
                    <div class="course-card">
                        <img src="https://images.unsplash.com/photo-1580894908361-967195033215?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Statistics" class="course-card-image">
                        <div class="course-card-content">
                            <h3 class="course-card-title">Statistics & Probability</h3>
                            <p class="course-card-instructor">By Prof. Anita Patel</p>
                            <p class="course-card-description">Master statistical concepts and probability theory with real-world applications and data analysis.</p>
                            <div class="course-card-meta">
                                <div class="course-card-rating">
                                    <i data-lucide="star"></i>
                                    <span>4.8 (92)</span>
                                </div>
                                <div class="course-card-price">₹1,199</div>
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
                                    <span>1,678 students</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Science Courses -->
            <div class="mb-10">
                <h2 class="text-xl font-bold mb-4">Science</h2>
                
                <div class="grid lg:grid-cols-4 md:grid-cols-3 sm:grid-cols-2 grid-cols-1 gap-6">
                    <!-- Course Card 1 -->
                    <div class="course-card">
                        <img src="https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" alt="Biology" class="course-card-image">
                        <div class="course-card-content">
                            <h3 class="course-card-title">Human Biology Essentials</h3>
                            <p class="course-card-instructor">By Dr. Priya Sharma</p>
                            <p class="course-card-description">Explore the fascinating world of human biology with detailed illustrations and explanations.</p>
                            <div class="course-card-meta">
                                <div class="course-card-rating">
                                    <i data-lucide="star"></i>
                                    <span>4.6 (98)</span>
                                </div>
                                <div class="course-card-price">₹1,299</div>
                            </div>
                        </div>
                        <div class="course-card-footer">
                            <div class="course-card-stats">
                                <div class="course-card-stat">
                                    <i data-lucide="clock"></i>
                                    <span>38 hours</span>
                                </div>
                                <div class="course-card-stat">
                                    <i data-lucide="users"></i>
                                    <span>1,845 students</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- More science courses would go here -->
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
                    <a href="#" class="btn btn-ghost">4</a>
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
                        <li class="footer-link"><a href="tel:+919876543210">+9962130504</a></li>
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