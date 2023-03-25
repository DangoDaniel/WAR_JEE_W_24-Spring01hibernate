package pl.coderslab.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import pl.coderslab.entity.Book;
import javax.validation.ConstraintViolation;
import javax.validation.Validator;
import java.util.Set;

@Controller
@Slf4j
@RequiredArgsConstructor
class ValidationController{
    private final Validator validator;

    @RequestMapping(path = "/validate", method = RequestMethod.GET)
    public String validateTest(Model model) {
        Book b2 = new Book();
        Set<ConstraintViolation<Book>> violations = validator.validate(b2);

        if (!violations.isEmpty()) {
            model.addAttribute("violations", violations);
            for (ConstraintViolation<Book> constraintViolation : violations) {
                log.error(constraintViolation.getPropertyPath() + " "
                        + constraintViolation.getMessage()); }

        } else {
            // save object
        }
//        return "validateResult";
        return "validator/result";
    }
}
