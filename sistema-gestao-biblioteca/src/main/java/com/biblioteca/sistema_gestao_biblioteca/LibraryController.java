/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.biblioteca.sistema_gestao_biblioteca;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.HttpServletRequest;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.*;

@Controller
public class LibraryController {
    private final JdbcTemplate jdbc;

    public LibraryController(JdbcTemplate jdbc) {
        this.jdbc = jdbc;
    }
    @GetMapping("/")
    public String home(@RequestParam Optional<String> q, Model m) {
        String sql = q.isPresent()
          ? "SELECT * FROM books WHERE LOWER(title) LIKE ?"
          : "SELECT * FROM books";
        List<Map<String,Object>> books = q.isPresent()
          ? jdbc.queryForList(sql, "%" + q.get().toLowerCase() + "%")
          : jdbc.queryForList(sql);
        m.addAttribute("books", books);
        return "index";
    }

    @PostMapping("/register")
    public String doRegister(@RequestParam String name,
                             @RequestParam String email,
                             @RequestParam String password,
                             Model m) {
        try {
            jdbc.update("INSERT INTO users(name,email,password) VALUES (?,?,?)",
                        name,email,password);
            return "redirect:/login";
        } catch (Exception e) {
            m.addAttribute("error","E‑mail já cadastrado");
            return "register";
        }
    }

    @PostMapping("/login")
    public String doLogin(@RequestParam String email,
                          @RequestParam String password,
                          HttpSession session,
                          Model m) {
        List<Map<String,Object>> u = jdbc.queryForList(
          "SELECT * FROM users WHERE email=? AND password=?", email, password);
        if (u.isEmpty()) {
            m.addAttribute("error","Credenciais inválidas");
            return "login";
        }
        session.setAttribute("userId", u.get(0).get("id"));
        return "redirect:/";
    }

    @PostMapping("/loan")
    public String doLoan(@RequestParam int bookId, HttpSession session) {
        Integer userId = (Integer) session.getAttribute("userId");
        if (userId == null) return "redirect:/login";
        jdbc.update("INSERT INTO loans(user_id,book_id,loan_date) VALUES (?,?,?)",
                    userId, bookId, LocalDate.now());
        jdbc.update("UPDATE books SET available=false WHERE id=?", bookId);
        return "redirect:/";
    }

    @GetMapping("/myloans")
    public String myLoans(HttpSession session, Model m) {
        Integer uid = (Integer) session.getAttribute("userId");
        if (uid == null) return "redirect:/login";
        List<Map<String,Object>> loans = jdbc.queryForList(
          "SELECT l.id, b.title, l.loan_date " +
          "FROM loans l JOIN books b ON l.book_id=b.id " +
          "WHERE l.user_id=?", uid);
        m.addAttribute("loans", loans);
        return "loans"; // crie um loans.html simples
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }
}

