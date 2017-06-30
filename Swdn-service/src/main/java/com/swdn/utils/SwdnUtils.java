package com.swdn.utils;

import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.swdn.error.SwdnError;
import com.swdn.error.SwdnErrors;
import com.swdn.exception.SwdnException;
import com.swdn.model.response.SwdnResponse;

@Service
public class SwdnUtils {

	
	public  SwdnResponse handleValidationException(SwdnErrors swdnErrors,BindingResult bindingResult) {
		SwdnResponse swdnResponse = new SwdnResponse();
		
		    String error = bindingResult.getAllErrors().get(0).getDefaultMessage();

			SwdnError swdnError = new SwdnError();
			swdnError.setErrorCode(swdnErrors.name());
			swdnError.setErrorMessage(error);
			swdnError.setErrorUiMessage(error);
			
			swdnResponse.setError(swdnError);
		return swdnResponse;
	}
	
	
	
	public  SwdnResponse getResponse(Object object, SwdnException exception) {
		SwdnResponse swdnResponse = new SwdnResponse();
		if (object != null)
			swdnResponse.setData(object);
		else {
			SwdnError swdnError = new SwdnError();
			swdnError.setErrorCode(exception.getErrorCode());
			swdnError.setErrorMessage(exception.getErrorMessage());
			swdnError.setErrorUiMessage(exception.getUiErrorMessage());
			swdnResponse.setError(swdnError);
		}

		return swdnResponse;
	}
	
	
}
