package MoraeTdat.Controller;

import MoraeTdat.Service.InquiryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/MoraeTDAT/inquiry")
public class InquiryController {
    
    final InquiryService inquiryService;

    @Autowired
    public InquiryController(InquiryService inquiryService) {
        this.inquiryService = inquiryService;
    }

    //문의사항
    @GetMapping("")
    public String inquiry() {

        return "inquiry";
    }

    //문의사항 남기기
    @GetMapping("/write")
    public String inquiryWrite() {

        return "inquiryWrite";
    }
    
}
