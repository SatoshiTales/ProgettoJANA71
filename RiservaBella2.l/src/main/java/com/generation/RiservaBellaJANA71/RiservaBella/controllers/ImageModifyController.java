package com.generation.RiservaBellaJANA71.RiservaBella.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.generation.RiservaBellaJANA71.RiservaBella.dao.AniDao;
import com.generation.RiservaBellaJANA71.RiservaBella.dao.PianteDao;

import java.io.File;
import java.io.IOException;

@Controller
public class ImageModifyController {

	@Autowired
	private AniDao dlA;
	
	@Autowired
	private PianteDao dlP;

	
    @RequestMapping(value = "/uploadImageA", method = RequestMethod.POST)
    public String handleImageUploadA(@RequestParam("image") MultipartFile image, @RequestParam("id") int id) {
        try {
            if (!image.isEmpty()) {
                // Save the uploaded image
                File uploadedImage = new File("C:\\Users\\Weeb Lord\\Documents\\Robe random\\El corso\\Progetti\\RiservaBella00\\RiservaBella2.l\\src\\main\\webapp\\img", image.getOriginalFilename());
                image.transferTo(uploadedImage);
                
               dlA.updateImg("img/" + uploadedImage.getName(), dlA.cercaPerId(id));
               
                return "redirect:elencoanimali";
            } else {
                return "redirect:/uploadFailure";
            }
        } catch (IOException e) {
        	e.printStackTrace();
            return "redirect:/uploadFailure";
        }
    }
    
    @RequestMapping(value = "/uploadImageP", method = RequestMethod.POST)
    public String handleImageUploadP(@RequestParam("image") MultipartFile image, @RequestParam("id") int id) {
        try {
            if (!image.isEmpty()) {
                // Save the uploaded image
                File uploadedImage = new File("C:\\Users\\Weeb Lord\\Documents\\Robe random\\El corso\\Progetti\\RiservaBella00\\RiservaBella2.l\\src\\main\\webapp\\img", image.getOriginalFilename());
                image.transferTo(uploadedImage);
                
               dlP.updateImg("img/" + uploadedImage.getName(), dlP.cercaPerId(id));
               
                return "redirect:elencopiante";
            } else {
                return "redirect:/uploadFailure";
            }
        } catch (IOException e) {
        	e.printStackTrace();
            return "redirect:/uploadFailure";
        }
    }

}

