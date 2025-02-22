package com.example.myfirstwebapp.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class sayHelloController {
    @RequestMapping("/hello")
    @ResponseBody
    public String hello(){
        return "Hello World to java Ganesh";
    }
    @RequestMapping("/hello-html")
    @ResponseBody
    public String helloHtml(){
        StringBuffer sb=new StringBuffer();
        sb.append("<!DOCTYPE html>\n" +
                "<html lang=\"en\">\n" +
                "<head>\n" +
                "    <meta charset=\"UTF-8\">\n" +
                "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n" +
                "    <title>Add Two Numbers</title>\n" +
                "</head>\n" +
                "<body>\n" +
                "    <h2>Simple Addition</h2>\n" +
                "    <label for=\"num1\">Enter First Number:</label>\n" +
                "    <input type=\"number\" id=\"num1\"><br><br>\n" +
                "\n" +
                "    <label for=\"num2\">Enter Second Number:</label>\n" +
                "    <input type=\"number\" id=\"num2\"><br><br>\n" +
                "\n" +
                "    <button onclick=\"addNumbers()\">Add</button>\n" +
                "\n" +
                "    <h3>Result: <span id=\"result\"></span></h3>\n" +
                "\n" +
                "    <script>\n" +
                "        function addNumbers() {\n" +
                "            let num1 = parseFloat(document.getElementById(\"num1\").value);\n" +
                "            let num2 = parseFloat(document.getElementById(\"num2\").value);\n" +
                "            let sum = num1 + num2;\n" +
                "            document.getElementById(\"result\").innerText = sum;\n" +
                "        }\n" +
                "    </script>\n" +
                "</body>\n" +
                "</html>\n");
        return sb.toString();
    }
    @RequestMapping ("/addition-jsp")

    public String additionjsp(){
        return "addition";
    }
}
