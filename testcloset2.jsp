<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Closet Page</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Inter', sans-serif;
            font-size: 14px;
            background: linear-gradient(to bottom, rgba(232, 240, 254, 1), rgba(238, 214, 255, 1)); /* Lavender soft theme */
            color: #333;
            transition: background-color 0.3s ease-in-out;
        }

        /* Header Section */
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);
            padding: 10px 30px;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .logo {
            font-family: 'Nothing You Could Do', cursive;
            font-size: 45px;
            color: #D81B60; /* Updated logo color */
            transition: color 0.3s ease-in-out;
        }

        .nav a {
            text-decoration: none;
            color: #333;
            margin: 0 15px;
            font-weight: 500;
            font-size: 18px;
            transition: color 0.3s;
        }

        .nav a:hover {
            color: #D81B60; /* Hover effect for nav links */
        }

        .profile-btn {
            background-color: #D81B60; /* Profile button color */
            color: white;
            border: none;
            border-radius: 8px;
            padding: 10px 20px;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }

        .profile-btn:hover {
            background-color: #351431; /* Hover effect for profile button */
        }

        /* Top Buttons and Search */
        .top-section {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 30px;
            animation: fadeIn 0.8s ease-out;
        }

        .buttons-container {
            display: flex;
            gap: 15px;
        }

        .button {
            padding: 10px 15px;
            font-size: 14px;
            font-weight: 500;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            color: #fff;
            transition: background-color 0.3s ease-in-out;
        }

        .btn-pink {
            background-color: #D81B60; /* Button color */
        }

        .btn-pink:hover {
            background-color: #351431; /* Hover effect */
        }

        .btn-gray {
            background-color: #ccc;
            color: #333;
        }

        .btn-gray:hover {
            background-color: #351431;
            color: white;
        }

        .search-bar input {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            width: 200px;
            transition: border 0.3s ease-in-out;
        }

        .search-bar input:focus {
            border: 1px solid #D81B60;
        }

        /* Filter and Sort */
        .filter-sort {
            display: flex;
            justify-content: flex-end;
            gap: 15px;
            padding: 10px 30px;
        }

        .dropdown {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 8px;
            background-color: #fff;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }

        .dropdown:hover {
            background-color: #D81B60;
            color: white;
        }

        /* Closet Section */
        .closet-container {
            margin: 20px 30px;
            background-color: #F2E5FF; /* Soft lavender background */
            border-radius: 15px;
            padding: 20px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
            animation: fadeIn 0.8s ease-out;
        }

        .image-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .image-item {
            position: relative;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            height: 250px;
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
            background-color: #fff;
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
        }

        .image-item:hover {
            transform: scale(1.05);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
        }

        .image-item img {
            width: 100%;
            height: 100%;
            object-fit: contain; /* Ensure images are contained within their containers */
            transition: opacity 0.3s ease-in-out;
        }

        .image-item:hover img {
            opacity: 0.85;
        }

        /* Heart Button Style */
        .heart-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            background-color: rgba(255, 255, 255, 0.7);
            border-radius: 50%;
            width: 40px;
            height: 40px;
            color: #D81B60;
            font-size: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
            opacity: 0;
            transition: opacity 0.3s ease-in-out, transform 0.2s ease-in-out;
        }

        .heart-btn.favorited {
            color: #FF6347; /* Change color when liked */
            transform: scale(1.2);
        }

        .image-item:hover .heart-btn {
            opacity: 1;
        }

        /* Animations */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        /* Add transition to buttons */
        .heart-btn:hover {
            transform: scale(1.1);
            background-color: #D81B60;
            color: white;
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

    <!-- Top Section -->
    <div class="top-section">
        <div class="buttons-container">
            <button class="button btn-pink">Add New Outfit</button>
            <button class="button btn-gray">Organize Wardrobe</button>
        </div>
        <div class="search-bar">
            <input type="text" placeholder="Search outfits...">
        </div>
    </div>

    <!-- Filter and Sort -->
    <div class="filter-sort">
        <select class="dropdown">
            <option>Filter by Tags</option>
            <option>Casual</option>
            <option>Formal</option>
            <option>Seasonal</option>
        </select>
        <select class="dropdown">
            <option>Sort by</option>
            <option>Newest First</option>
            <option>Oldest First</option>
            <option>Most Popular</option>
        </select>
    </div>

    <!-- Closet Section -->
    <div class="closet-container">
        <div class="image-grid">
            <!-- Images -->
            <div class="image-item">
                <img src="resources/cloth1.png" alt="Red Summer Dress">
                <button class="heart-btn">??</button>
            </div>
            <div class="image-item">
                <img src="resources/cloth2.png" alt="White Formal Shirt">
                <button class="heart-btn">??</button>
            </div>
            <div class="image-item">
                <img src="resources/cloth3.png" alt="Blue Denim Jacket">
                <button class="heart-btn">??</button>
            </div>
            <div class="image-item">
                <img src="resources/cloth4.png" alt="Black Leather Jacket">
                <button class="heart-btn">??</button>
            </div>
            <div class="image-item">
                <img src="resources/cloth5.png" alt="Yellow Sundress">
                <button class="heart-btn">??</button>
            </div>
            <div class="image-item">
                <img src="resources/cloth6.png" alt="Green Casual T-Shirt">
                <button class="heart-btn">??</button>
            </div>
            <div class="image-item">
                <img src="resources/cloth7.jpg" alt="Pink Blouse">
                <button class="heart-btn">??</button>
            </div>
            <div class="image-item">
                <img src="resources/cloth8.jpg" alt="Gray Hoodie">
                <button class="heart-btn">??</button>
            </div>
            <div class="image-item">
                <img src="resources/cloth9.jpg" alt="Striped Sweater">
                <button class="heart-btn">??</button>
            </div>
        </div>
    </div>

    <script>
        // Toggle favorite state
        const heartButtons = document.querySelectorAll('.heart-btn');
        heartButtons.forEach(button => {
            button.addEventListener('click', () => {
                button.classList.toggle('favorited');
            });
        });
    </script>
</body>
</html>
