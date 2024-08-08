# Project Overview

## Final Due Date: 8/14

## Database

- **Use a database**: Implement a relational database to manage application data.
- **ER Diagram**: Create an Entity-Relationship diagram using any tool.
- **Tables**: Implement at least 4 database tables (excluding User Roles). Ensure proper primary and foreign keys.
- **Naming Conventions**: Use lowercase column names. Primary key should be `id`, foreign keys should be named as `tablename_id`.
- **Many-to-Many Relationship**: Implement a many-to-many relationship using an intermediate table.
- **Entity Objects**: Create Java entity classes for each database table.
- **DAO/Repository**: Create one DAO/Repository for each table.
- **Queries**:
  - Use a native query with `@Query(..., native = true)`.
  - Use a JPA non-native query with `@Query`.
  - Implement a Spring Data query based on method name.
- **Database Configuration**: Configure database settings using `application.properties`.

## HTML / CSS / JavaScript

- **Dynamic Pages**: Develop 6 dynamic pages (login page excluded).
- **Character Encoding**: Ensure UTF-8 encoding in HTML (ISO-8859-1 will result in -5 points deduction).
- **HTML Elements**:
  - Include a `<select>` element.
  - Include a `<radio>` button.
  - Include a `<checkbox>`.
- **CSS**:
  - Use an external CSS file.
  - Include internal or inline CSS.
  - Optionally use Bootstrap or jQuery for extra credit.
- **JavaScript**: Implement JavaScript functionalities.
- **Navigation Menu**: Ensure consistent navigation menu across all pages.

## JSP / Spring MVC

- **JSP Includes**: Use JSP `include` for common header and footer.
- **JSTL**:
  - Use `<c:forEach>` loop.
  - Use `<c:if>` or `<c:choose>` statement.
- **Controller Methods**: Implement at least one GET and one POST controller method.
- **Form Bean Validation**: Create a form bean with 2 different validation annotations.
- **Validation**: Use `@Valid` with `BindingResult` (excluding registration page).
- **Annotations**:
  - Use `@RequestParam` in controllers.
  - Use `@PathVariable` in controllers.
- **Error Handling**: Implement an error controller with 404 and/or 500 error pages.
- **Folder Structure**: Follow proper folder structure using `pub` directory and `WEB-INF/jsp`.
- **Create/Edit Pages**: Develop create and edit pages for at least one table.

## Spring Security

- **Configuration**: Set up Spring Security configuration.
- **Login Page**: Implement a functional login page.
- **Authorization**:
  - Use `<sec:authorize>` for `isAuthenticated`.
  - Use `<sec:authorize>` for `isAnyAuthority`.
- **User Information**: Retrieve logged-in user information in JSP or controller.
- **Method Security**: Use `@PreAuthorize` on controllers or methods.
- **Password Encryption**: Ensure proper encryption of passwords for storage in the database.

## Java / JUnit

- **JUnit Testing**:
  - Create JUnit test cases for 3 DAO classes. (Did not do!)
  - Use JUnit `@Order` for CRUD operations. (Did not do!)
  - Implement a parameterized test. (Did not do!)
  - Use Java lambda expressions.
  - Utilize Java streams to iterate over lists.
- **Logging**: Implement logging mechanisms as needed.

## Miscellaneous

- **README**: Ensure the README file is comprehensive and up-to-date in the GitHub repository.
- **Presentation**: Prepare and organize a presentation of the project.
