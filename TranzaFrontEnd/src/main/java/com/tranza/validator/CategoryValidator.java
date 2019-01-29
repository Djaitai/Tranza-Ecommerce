package com.tranza.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.tranza.ecommerce.model.Category;

public class CategoryValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Category.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Category category = (Category) target;
		
		//Check whetehre file as been selected
		
		if(category.getFile()==null || category.getFile().getOriginalFilename().equals("")) {
			errors.rejectValue("file",null , "Veuillez sélectionner un fichier image à télécharger!");
			return;
		}

		if(!(category.getFile().getContentType().equals("image/jpeg") ||
						category.getFile().getContentType().equals("image/png")||
						category.getFile().getContentType().equals("image/gif"))
				){
			errors.rejectValue("file",null, "S'il vous plaît utiliser uniquement le fichier image à télécharge!");
			return;
		}
		
		//Adding more if statement to check
	}

}
