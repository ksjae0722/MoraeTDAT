package MoraeTdat.Controller;

import MoraeTdat.Service.MoraeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping(value="/test/plz")
public class HelloController {

	@Autowired
	MoraeService moraeService;

}

