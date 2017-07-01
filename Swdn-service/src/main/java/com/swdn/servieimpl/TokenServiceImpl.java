package com.swdn.servieimpl;

import java.security.MessageDigest;
import java.security.spec.KeySpec;
import java.util.Arrays;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javax.crypto.spec.DESedeKeySpec;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.swdn.error.SwdnErrors;
import com.swdn.exception.SwdnException;
import com.swdn.logger.SwdnLogger;
import com.swdn.modle.dto.TokenDetailsDto;
import com.swdn.service.TokenService;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

@Service
public class TokenServiceImpl implements TokenService {

	@Value("${3DES.secondKey}")
	private String encryptionKey;

	@Autowired
	SwdnLogger swdnLogger;

	private static final String UNICODE_FORMAT = "UTF8";

	public static final String DESEDE_ENCRYPTION_SCHEME = "DESede";

	@SuppressWarnings("restriction")
	@Override
	public TokenDetailsDto encryptToken(TokenDetailsDto token) throws SwdnException {

		StringBuilder messageBuilder = new StringBuilder();
		messageBuilder.append(token.getUserName()).append("+");
		messageBuilder.append(token.getAgent()).append("+");
		messageBuilder.append(token.getTokenExpirationTime()).append("+");

		try {

			String myEncryptionKey = "ThisIsSecretEncryptionKey";
			KeySpec myKeySpec = new DESedeKeySpec(myEncryptionKey.getBytes(UNICODE_FORMAT));
			SecretKeyFactory mySecretKeyFactory = SecretKeyFactory.getInstance(DESEDE_ENCRYPTION_SCHEME);

			Cipher cipher = Cipher.getInstance(DESEDE_ENCRYPTION_SCHEME);
			SecretKey key = mySecretKeyFactory.generateSecret(myKeySpec);

			cipher.init(Cipher.ENCRYPT_MODE, key);
			byte[] plainText = messageBuilder.toString().getBytes(UNICODE_FORMAT);
			byte[] encryptedText = cipher.doFinal(plainText);
			BASE64Encoder base64encoder = new BASE64Encoder();
			token.setTokenString(base64encoder.encode(encryptedText));
			return token;
		} catch (Exception exception) {
			swdnLogger.logException(TokenServiceImpl.class.getSimpleName(), exception);
			throw new SwdnException(SwdnErrors.SWDN_TOKEN_ERROR_01.name(), exception.getMessage(),
					exception.getMessage());
		}

	}

	@Override
	public TokenDetailsDto decryptToken(String stringToken) throws SwdnException {
		try {
			MessageDigest md = MessageDigest.getInstance("md5");
			byte[] digestOfPassword = md.digest(encryptionKey.getBytes("utf-8"));
			byte[] keyBytes = Arrays.copyOf(digestOfPassword, 24);
			for (int j = 0, k = 16; j < 8;) {
				keyBytes[k++] = keyBytes[j++];
			}

			SecretKey key = new SecretKeySpec(keyBytes, "DESede");
			IvParameterSpec iv = new IvParameterSpec(new byte[8]);
			Cipher decipher = Cipher.getInstance("DESede/CBC/PKCS5Padding");
			decipher.init(Cipher.DECRYPT_MODE, key, iv);

			byte[] plainText = decipher.doFinal(stringToken.getBytes());

			String decryptedString = new String(plainText);

			String[] tokenStrings = decryptedString.split("+");

			TokenDetailsDto token = new TokenDetailsDto();
			token.setUserName(tokenStrings[0]);
			token.setAgent(tokenStrings[1]);
			return token;

		} catch (Exception exception) {
			swdnLogger.logException(TokenServiceImpl.class.getSimpleName(), exception);
			throw new SwdnException(SwdnErrors.SWDN_TOKEN_ERROR_01.name(), exception.getMessage(),
					exception.getMessage());
		}
	}

}
