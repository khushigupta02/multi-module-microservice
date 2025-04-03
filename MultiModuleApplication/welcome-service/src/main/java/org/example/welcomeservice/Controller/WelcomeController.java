package org.example.welcomeservice.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/welcome")
class WelcomeController {
    @GetMapping("/message")
    public String displayWelcomeMessage() {
        return "Hello - Welcome Here !";
    }
}