package com.javagda34.webapp;

import lombok.*;

@Getter
@Setter
@ToString
@Builder
@EqualsAndHashCode(of = {"indexNumber"})
@AllArgsConstructor
@NoArgsConstructor
public class Student {
    private String indexNumber;
    private String firstName;
    private String lastName;
    private Double average;
    private Gender gender;
    private boolean active;

}
