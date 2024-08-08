package com.example.springboot.form;


import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Pattern;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.validator.constraints.Length;

@Getter
@Setter
@ToString
public class CreateProductFormBean {

    // when the user exists in the database this value will be populated with the id of employee in the database
    // this field is only set when the user called the /employee/edit URL and gives a valid employee id
    // if this field is null, then it is a create
    private Integer productId;


//    // these annotations are called JSR-303 validation
//    @Length(max = 100, message = "Email must be less than 100 characters")
//    @NotEmpty(message="Email is required.")
//    @Email(message = "This must be a valid email")
//    // this is a flaw in the architecture of validation because you
//    //@EmployeeEmailUnique(message = "This email is already in use.")
//    private String email;

    @Pattern(regexp="[a-zA-Z]+", message = "Product name must have characters only.")
    @Length(max = 50, message = "Product name must be less than 50 characters")
    @NotEmpty(message = "Product name is required.")
    private String productName;


    private Double productPrice;



    private String productImageUrl;

    // we are going to make this data type an integer because we know we want to write to the database as an integer
    private String productDescription;


}
