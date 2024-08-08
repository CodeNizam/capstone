package com.example.springboot.controller;

import com.example.springboot.database.dao.ProductDAO;
import com.example.springboot.database.entity.Product;
import com.example.springboot.form.CreateProductFormBean;
import com.example.springboot.service.ProductService;
import jakarta.annotation.PostConstruct;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Slf4j
@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductDAO productDAO;

    public ProductController() {
        // some kind of initialization code in here

        // in phase 1 of component scan the constructor is called to create the new object
        // however the autowired fields are not set yet
        // in phase 2 the autowired fields are set
        // in phase 3 the @PostConstruct method is called

        // constructors are not longer used very much in spring
    }

    @PostConstruct
    public void init() {
        // this is executed in phase 3 after all of the autowired fields are set
        // this takes the place of a constructor for initialization code
    }


    @Autowired
    private ProductDAO productDao;


    @Autowired
    private ProductService productService;



    @GetMapping("/detail")
    public ModelAndView detail(@RequestParam Integer productId) {
        ModelAndView response = new ModelAndView("product/detail");

//        List<Customer> customers = customerDao.findBySalesRepEmployeeId(employeeId);
//        response.addObject("customers", customers);

        Product product = productDao.findById(productId);
        response.addObject("product", product);

        return response;
    }



    @GetMapping("/create")
    public ModelAndView create() {
        // this method is setting up the view for rendering
        ModelAndView response = new ModelAndView("product/create");

        loadDropdowns(response);

        return response;
    }

    private void loadDropdowns(ModelAndView response) {
        List<Product> reportsToEmployees = productDAO.findAll();
        response.addObject("reportsToEmployees", reportsToEmployees);


    }

    // these 2 annotations are essentially the same thing
    // @GetMapping("/edit")  <-- this is just a shortcut for the below line
    @RequestMapping(value = "/edit", method = RequestMethod.GET )
    public ModelAndView edit(@RequestParam(required = false) Integer productId) {
        // by setting required = false on the incoming parameter we allow null to enter the controller so that spring does not cause an error page
        // then we check if the input is null before trying to do our query

        // this view is the same for all the methods so far, even tho it is named create and we are using it for edit
        ModelAndView response = new ModelAndView("product/create");

        // here again we have some duplicated code that could be refactored into a method
        loadDropdowns(response);

        // here I am checking the incoming employeeId to see if it is null or not
        if (productId != null) {
            // load the employee from the database and set the form bean with all the employee values
            // this is because the form bean is on the JSP page and we need to pre-populate the form with the employee data
            Product product = productDao.findById(productId);
            if (product != null) {
                // we only do this code if we found an employee in the database
                CreateProductFormBean form = new CreateProductFormBean();

                // when we are doing an edit we need to pass the employee id to the JSP page so it can put it in the hidden input field
                form.setProductId(product.getId());


                form.setProductName(product.getName());
                form.setProductPrice(product.getPrice());
                form.setProductImageUrl(product.getImageUrl());
                form.setProductDescription(product.getDescription());


                response.addObject("form", form);
            } else {
                // the employee was not found in the database
                response.addObject("errorMessage", "The product was not found in the database.");
            }
        }

        return response;
    }







    @RequestMapping(value = "/createSubmit", method = { RequestMethod.POST, RequestMethod.GET })
    public ModelAndView createSubmit(@Valid CreateProductFormBean form, BindingResult bindingResult) {

        ModelAndView response = new ModelAndView();
//        if ( form.getProductId() == null ) {
//            Product p = productDao.findByNameIgnoreCase(form.getProductName());
//
//            if ( p != null ) {
//                bindingResult.rejectValue("email", "email", "This email is already in use. Manual Check");
//            }
//        }


        if (bindingResult.hasErrors()) {
            for (ObjectError error : bindingResult.getAllErrors()) {
                log.debug("Validation error : " + ((FieldError) error).getField() + " = " + error.getDefaultMessage());
            }

            // TODO =  Cleanup this code to reduce the duplicated code in the create()
            response.addObject("bindingResult", bindingResult);

            loadDropdowns(response);


            response.setViewName("product/create");


            response.addObject("form", form);

            return response;
        } else {

            Product product = productService.createProduct(form);

            // redirecting to the employee detail page
            // however often times this would redirect to the edit page (which we have not created)
            // after the redirect is actually a URL not a view name
            // in some ways this is overriding the behavior of the setViewName to use a URL rather than a JSP file location
            response.setViewName("redirect:/product/detail?productId=" + product.getId());



            return response;
        }





    }




}
