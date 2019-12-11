package com.example.repairagencyspringboot.controller;

import com.example.repairagencyspringboot.entity.Feedback;
import com.example.repairagencyspringboot.entity.User;
import com.example.repairagencyspringboot.form.FeedbackForm;
import com.example.repairagencyspringboot.repository.FeedbackRepo;
import com.example.repairagencyspringboot.service.FeedbackService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.validation.Valid;

@Controller
@RequestMapping(value = "/feedback")
public class FeedbackController {
    private static final Logger LOG = LoggerFactory.getLogger(FeedbackController.class);
    @Resource
    private FeedbackRepo repository;
    @Resource
    private FeedbackService feedbackService;

    @GetMapping
    public String feedback(Model model) {
        model.addAttribute("feedback", repository.findAll());
        model.addAttribute("feedbackForm", new FeedbackForm());

        return "feedback";
    }

    @PostMapping
    public String feedback(@Valid @ModelAttribute("feedbackForm")FeedbackForm feedbackForm, BindingResult error, Model model){
        LOG.info("Form {}", feedbackForm);
        if(error.hasErrors()){
            return "feedback";
        }
        Feedback feedback = feedbackService.addFeedback(feedbackForm);
        if(feedback == null){
            error.rejectValue("feedbackMessage", "Error");
            model.addAttribute("notification", "Message must be longer than 10 characters");
            return "feedback";
        }
        model.addAttribute("notification", "Thank you for your feedback!");
        return "redirect:/";
    }
}
