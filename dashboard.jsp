<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FitRizz Dashboard</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Import Stylish Font */

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to bottom, #F8F1F4, #FFF3E0); /* Soft pinkish white to pale peach */
            color: #333;
            overflow-x: hidden;
        }

        /* Header / Navbar */
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 40px;
            background: rgba(248, 241, 244, 0.85);
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .logo {
            font-weight: bold;
            font-size: 2rem;
            color: #D81B60; /* Primary Pink */
        }

        .nav {
            display: flex;
            gap: 30px;
            margin-left: auto;
        }

        .nav a {
            text-decoration: none;
            color: #555;
            font-weight: 600;
            font-size: 1.1rem;
            transition: all 0.3s ease;
        }

        .nav a:hover {
            color: #D81B60;
            transform: scale(1.05);
        }

        .profile-btn {
            background: #D81B60; /* Primary Pink */
            color: #FFF;
            border: none;
            border-radius: 50px;
            padding: 8px 20px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .profile-btn:hover {
            background: #E91E63; /* Slightly brighter pink */
            transform: scale(1.1);
        }

        /* Welcome Section */
        .welcome-section {
            text-align: left;
            padding: 20px 40px;
        }

        .welcome-section h1 {
            font-size: 2.8rem;
            font-weight: 700;
            color: #333;
        }

        .welcome-section h2 {
            font-size: 1.6rem;
            color: #D81B60; /* Primary Pink */
            margin-bottom: 10px;
        }

        .welcome-section p {
            font-size: 1rem;
            color: #777;
        }

        /* Buttons */
        .btn-container {
            display: flex;
            gap: 20px;
            margin: 20px 0;
        }

        .btn {
            padding: 15px 30px;
            background: #D81B60; /* Primary Pink */
            color: white;
            font-size: 1.1rem;
            font-weight: bold;
            border: none;
            border-radius: 50px;
            transition: all 0.3s ease;
            cursor: pointer;
        }

        .btn:hover {
            background: #E91E63; /* Slightly lighter pink */
            transform: translateY(-3px);
        }

        /* Sliding Images */
        .sliding-images {
            position: relative;
            width: 600px;
            height: 300px;
            margin: auto;
            overflow: hidden;
            border-radius: 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .sliding-images img {
            width: 100%;
            display: none;
            animation: fade 1s ease;
        }

        @keyframes fade {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        /* Features Section */
/* Features Section */
.features {
    display: flex;
    gap: 20px;
    padding: 20px 40px;
    justify-content: space-between; /* Ensure the boxes stay side by side */
}

.feature-box {
    flex: 1; /* Make each box take equal space */
    background: #FCE4EC; /* Light pink background */
    text-align: center;
    padding: 20px; /* Adjusted padding to maintain box size */
    border-radius: 15px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    transition: all 0.3s ease;
    cursor: pointer;
    height: 300px; /* Maintain box height */
}

.feature-box:hover {
    transform: translateY(-5px);
    background: #F8BBD0; /* Slightly deeper pink */
}

.feature-box img {
    width: 100%; /* Make image take up full width */
    height: 70%; /* Make image more rectangular by adjusting height */
    object-fit: cover; /* Ensure image fills the area without distortion */
    margin-bottom: 15px;
    border-radius: 10px;
}

.feature-box h3 {
    margin: 10px 0 0;
    font-weight: 600;
    color: #D81B60; /* Primary Pink */
}

        /* Footer */
        .footer {
            text-align: center;
            padding: 15px;
            background: rgba(248, 241, 244, 0.85);
            color: #555;
            font-weight: 600;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <div class="header">
        <div class="logo">FitRizz</div>
        <div class="nav">
            <a href="#">Home</a>
            <a href="closet.jsp">Closet</a>
            <a href="#">Recommend</a>
            <a href="#">Calendar</a>
            <a href="#">Favourites</a>
        </div>
        <button class="profile-btn">Profile</button>
    </div>

    <!-- Welcome Section -->
    <div class="welcome-section">
        <h1>Own the Fit, Elevate the Rizz.</h1>
        <h2>Hello User!</h2>
        <p>You have x outfits saved || y favourites &lt;3</p>
    </div>

    <!-- Buttons and Sliding Images -->
    <div style="display: flex; justify-content: space-between; align-items: center; padding: 0 40px;">
        <div class="btn-container">
            <button class="btn">Add New Outfit</button>
            <button class="btn">Generate Combinations</button>
        </div>
        <div class="sliding-images">
            <img src="resources/slide1.png" alt="Image 1" class="slide">
            <img src="resources/slide2.png" alt="Image 2" class="slide">
            <img src="resources/slide3.jpg" alt="Image 3" class="slide">
        </div>
    </div>

    <!-- Features -->
    <div class="features">
        <div class="feature-box">
            <img src="resources/box1.jpg" alt="Trends">
            <h3>Browse Latest Trends</h3>
        </div>
        <div class="feature-box">
            <img src="resources/box2.jpg" alt="Questionnaire">
            <h3>Take the Questionnaire</h3>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        &copy; 2024 FitRizz. All Rights Reserved.
    </div>

    <!-- JS for Sliding Images -->
    <script>
        let currentIndex = 0;
        const slides = document.querySelectorAll(".slide");

        function showSlides() {
            slides.forEach(slide => slide.style.display = "none");
            currentIndex++;
            if (currentIndex > slides.length) currentIndex = 1;
            slides[currentIndex - 1].style.display = "block";
            setTimeout(showSlides, 3000);
        }

        document.addEventListener("DOMContentLoaded", showSlides);
    </script>
</body>
</html>
