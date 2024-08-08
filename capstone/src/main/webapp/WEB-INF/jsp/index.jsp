<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="include/header.jsp" />

<!-- Hero Section -->
<section class="hero bg-dark text-white text-center d-flex align-items-center justify-content-center" style="height: 100vh;">
    <div class="container">
        <h1 class="display-4">Welcome to the<img src="/pub/images/Mirage-Market.png" alt="Mirage Market Logo" class="img-fluid" style="max-height: 150px;"></h1> <!-- Adjust max-height as needed -->
        <h7 class="lead">Your one-stop shop for legendary items.</h7>
        <br>
        <br>
        <a href="/all-products" class="btn btn-primary btn-lg">Shop Now</a>
    </div>
</section>

<!-- Featured Products Section -->
<section class="featured-products py-5">
    <div class="container">
        <h2 class="text-center mb-4">Featured Products</h2>
        <div class="row">
            <!-- Example product cards -->
            <div class="col-md-4">
                <div class="card">
                    <img src="https://picsum.photos/300/300" class="card-img-top" alt="Product 1">
                    <div class="card-body">
                        <h5 class="card-title">Excalibur Sword</h5>
                        <p class="card-text">$1500</p>
                        <a href="/product/1" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="https://picsum.photos/400/300" class="card-img-top" alt="Product 2">
                    <div class="card-body">
                        <h5 class="card-title">Phoenix Feather</h5>
                        <p class="card-text">$2500</p>
                        <a href="/product/2" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="https://picsum.photos/300/400" class="card-img-top" alt="Product 3">
                    <div class="card-body">
                        <h5 class="card-title">Elixir of Life</h5>
                        <p class="card-text">$5000</p>
                        <a href="/product/3" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>



<!-- Testimonials Section -->
<section class="testimonials py-5">
    <div class="container">
        <h2 class="text-center mb-4">What Our Customers Say</h2>
        <div class="row">
            <div class="col-md-4">
                <blockquote class="blockquote text-center">
                    <p class="mb-0">"I pulled Excalibur out of the stone and into my cart. Now I'm the king of discounts!"</p>
                    <br>
                    <footer class="blockquote-footer">Arthur Pendragon</footer>
                </blockquote>
            </div>
            <div class="col-md-4">
                <blockquote class="blockquote text-center">
                    <p class="mb-0">"I'm on cloud nine after buying these magic beans!</p>
                    <br>
                    <footer class="blockquote-footer">Jack</footer>
                </blockquote>
            </div>
            <div class="col-md-4">
                <blockquote class="blockquote text-center">
                    <p class="mb-0">"The Elixir of Life? More like the Elixir of Never-Ending Fun!"</p>
                    <br>
                    <footer class="blockquote-footer">Nicholas Flamel</footer>
                </blockquote>
            </div>
        </div>
    </div>
</section>

<!-- Footer -->
<jsp:include page="include/footer.jsp" />
