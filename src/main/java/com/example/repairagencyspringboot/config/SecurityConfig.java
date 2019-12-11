package com.example.repairagencyspringboot.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.authority.mapping.GrantedAuthoritiesMapper;
import org.springframework.security.core.authority.mapping.SimpleAuthorityMapper;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AndRequestMatcher;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import javax.annotation.Resource;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {
        @Resource
        private UserDetailsService userDetailsService;

        @Bean
        public DaoAuthenticationProvider authenticationProvider(){
                DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
                provider.setUserDetailsService(userDetailsService);
                provider.setPasswordEncoder(passwordEncoder());
                return provider;
        }

        @Bean
        public GrantedAuthoritiesMapper authoritiesMapper(){
                SimpleAuthorityMapper authorityMapper = new SimpleAuthorityMapper();
                authorityMapper.setConvertToUpperCase(true);
                authorityMapper.setDefaultAuthority("CUSTOMER");
                return authorityMapper;
        }

        @Bean
        public PasswordEncoder passwordEncoder() {
                return new BCryptPasswordEncoder(11);
        }

        @Bean
        public AuthenticationManager customAuthenticationManager() throws Exception {
                return authenticationManager();
        }

        @Override
        protected void configure(AuthenticationManagerBuilder auth) throws Exception {
                auth.authenticationProvider(authenticationProvider());
        }

        @Override
        protected void configure(HttpSecurity http) throws Exception {
                http.csrf().disable().headers().frameOptions().disable().and().authorizeRequests()
                        .antMatchers("/gallery-masonry","/blog-post","/blog-masonry",
                                "/contacts","/services","/about","/", "/index","/feedback",
                                 "/h2-console/**", "/css/**", "/js/**",
                                "/images/**","/privacy","/team","/team-member-profile",
                                "/fonts/**","/404", "/error","/news","/registration",
                                "/login-register","/users","/order","/template","/profile","/user-profile")

//                        .antMatchers("/admin", "/user", "/manager", "/master", "/feedback", "/order").hasRole("ADMIN")
                        .permitAll()
                        .anyRequest().authenticated().and()
                        .formLogin()
                        .loginPage("/login").permitAll()
                        .and()
                        .logout().invalidateHttpSession(true)
                        .clearAuthentication(true)
                        .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
                        .logoutSuccessUrl("/")
                        ;
        }

}

