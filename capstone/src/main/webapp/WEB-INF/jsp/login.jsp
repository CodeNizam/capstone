<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../include/header.jsp"/>

<!-- Page Header -->
<section style="background-color: #343a40; color: white; padding: 5rem 0;">
    <div class="container">
        <h1 class="text-center">Enter Your Credentials</h1>
    </div>
</section>

<!-- Login Form -->
<section style="padding: 4rem 0;">
    <div class="container">
        <!-- Error Message -->
        <c:if test="${param['error'] eq ''}">
            <div class="row justify-content-center mb-4">
                <div class="col-md-8 col-lg-6">
                    <div class="alert alert-danger" role="alert">Invalid Username or Password</div>
                </div>
            </div>
        </c:if>

        <!-- Form Card -->
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="card border-light shadow-lg">
                    <div class="card-body">
                        <form action="/account/loginProcessingURL" method="post">

                            <!-- Email Input -->
                            <div class="mb-4">
                                <label for="usernameId" class="form-label">Email</label>
                                <input type="text" id="usernameId" name="username" class="form-control <c:if test="${bindingResult.hasFieldErrors('email')}">is-invalid</c:if>"
                                       value="${form.email}">
                                <c:if test="${bindingResult.hasFieldErrors('email')}">
                                    <div class="invalid-feedback">
                                        <c:forEach items="${bindingResult.getFieldErrors('email')}" var="error">
                                            ${error.defaultMessage}<br>
                                        </c:forEach>
                                    </div>
                                </c:if>
                            </div>

                            <!-- Password Input -->
                            <div class="mb-4">
                                <label for="passwordId" class="form-label">Password</label>
                                <input type="password" id="passwordId" name="password" class="form-control <c:if test="${bindingResult.hasFieldErrors('password')}">is-invalid</c:if>"
                                       value="${form.password}">
                                <c:if test="${bindingResult.hasFieldErrors('password')}">
                                    <div class="invalid-feedback">
                                        <c:forEach items="${bindingResult.getFieldErrors('password')}" var="error">
                                            ${error.defaultMessage}<br>
                                        </c:forEach>
                                    </div>
                                </c:if>
                            </div>

                            <!-- Submit Button -->
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="../include/footer.jsp"/>
