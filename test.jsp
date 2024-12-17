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

        /* Description Box */
        .desc-box {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            background-color: #351431; /* Dark purple */
            color: white;
            padding: 10px;
            font-size: 14px;
            opacity: 0;
            transition: opacity 0.3s ease-in-out;
        }

        .image-item:hover .desc-box {
            opacity: 1;
        }

        /* Pagination */
        .pagination {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .page-btn {
            padding: 10px 20px;
            background-color: #D81B60;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }

        .page-btn:hover {
            background-color: #351431;
        }

        .pagination .page-btn:disabled {
            background-color: #ccc;
            cursor: not-allowed;
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
                <div class="desc-box">A stylish red summer dress perfect for beach outings.</div>
                <button class="heart-btn">??</button>
            </div>
            <div class="image-item">
                <img src="resources/cloth2.png" alt="Blue Shirt">
                <div class="desc-box">Casual blue shirt for everyday wear.</div>
                <button class="heart-btn">??</button>
            </div>
            <div class="image-item">
                <img src="resources/cloth3.png" alt="Black Jeans">
                <div class="desc-box">Sleek black jeans for any occasion.</div>
                <button class="heart-btn">??</button>
            </div>
            <div class="image-item">
                <img src="resources/cloth4.png" alt="Green Jacket">
                <div class="desc-box">Comfortable green jacket for chilly evenings.</div>
                <button class="heart-btn">??</button>
            </div>
            <div class="image-item">
                <img src="resources/cloth5.png" alt="White Sneakers">
                <div class="desc-box">Simple white sneakers to complement any outfit.</div>
                <button class="heart-btn">??</button>
            </div>
            <div class="image-item">
                <img src="resources/cloth6.png" alt="Black Skirt">
                <div class="desc-box">Elegant black skirt for formal events.</div>
                <button class="heart-btn">??</button>
            </div>
            <div class="image-item">
                <img src="resources/cloth7.png" alt="Casual Hoodie">
                <div class="desc-box">A cozy casual hoodie for relaxed days.</div>
                <button class="heart-btn">??</button>
            </div>
            <div class="image-item">
                <img src="resources/cloth8.png" alt="Plaid Pants">
                <div class="desc-box">Trendy plaid pants for a fashionable look.</div>
                <button class="heart-btn">??</button>
            </div>
            <div class="image-item">
                <img src="resources/cloth9.png" alt="Denim Jacket">
                <div class="desc-box">Classic denim jacket for everyday wear.</div>
                <button class="heart-btn">??</button>
            </div>
        </div>

        <!-- Pagination -->
        <div class="pagination">
            <button class="page-btn">&lt; Previous</button>
            <button class="page-btn">1/3</button> <!-- Display current page -->
            <button class="page-btn">Next &gt;</button>
        </div>
    </div>

    <script>
        // Heart button toggle functionality
        const heartBtns = document.querySelectorAll('.heart-btn');
        heartBtns.forEach(btn => {
            btn.addEventListener('click', () => {
                btn.classList.toggle('favorited');
            });
        });
    </script>
</body>
</html>
