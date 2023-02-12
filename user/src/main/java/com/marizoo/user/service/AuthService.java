package com.marizoo.user.service;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.marizoo.user.entity.User;
import com.marizoo.user.exception.RefreshTokenException;
import com.marizoo.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.servlet.http.Cookie;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import static com.marizoo.user.constant.JwtConstant.*;

@Service
@RequiredArgsConstructor
@Slf4j
public class AuthService {

    private final UserRepository userRepository;

    public Map<String, String> refresh(String refreshToken) {
        Map<String, String> tokenMap = new HashMap<>();

        // refresh token 유효성 검사
        try {
            String uid = JWT.require(Algorithm.HMAC512(JWT_SECRET))
                    .build()
                    .verify(refreshToken)
                    .getSubject();

            if (uid != null) {
                User user = userRepository.findByUid(uid).orElseThrow(
                        () -> new RefreshTokenException("리프레시 토큰 정보가 잘못되었습니다.")
                );

                // user가 가지고 있던 refresh token과 비교
                if (user.getRefreshToken().equals(refreshToken)) {
                    // 일치하면 access token 새로 발급
                    String accessToken = JWT.create()
                            .withSubject(user.getUid())
                            .withExpiresAt(new Date(System.currentTimeMillis() + AT_EXP_TIME))
                            .withClaim("uid", user.getUid())
                            .sign(Algorithm.HMAC512(JWT_SECRET));

                    tokenMap.put(AT_HEADER, TOKEN_HEADER_PREFIX + accessToken);

                    String newRefreshToken = JWT.create()
                            .withSubject(user.getUid())
                            .withExpiresAt(new Date(System.currentTimeMillis() + RT_EXP_TIME))
                            .withIssuedAt(new Date(System.currentTimeMillis()))
                            .sign(Algorithm.HMAC512(JWT_SECRET));

                    user.setRefreshToken(newRefreshToken);

                    tokenMap.put(RT_HEADER, newRefreshToken);
                }
            }
        } catch (Exception e) {
            log.error(e.getClass().toString());
            log.error(e.getMessage());
            throw new RefreshTokenException("리프레시 토큰 정보가 잘못되었습니다.");
        }

        return tokenMap;
    }
}