package com.hakaton.challenge.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "user_entity")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserEntity {
    @Id
   // @SequenceGenerator(name = "userSeqGen", sequenceName = "userSeqGen", initialValue = 1, allocationSize = 1)
    //@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "userSeqGen")
    @Column(name="user_id", unique=true, nullable=false)
    private Long id;

    @Column(nullable = false)
    private String email;

    @Column(nullable = false)
    private String firstName;

    @Column(nullable = false)
    private String lastName;

    //@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    //private List<OrderEntity> orders;
}
