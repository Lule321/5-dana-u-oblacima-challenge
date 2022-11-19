package com.hakaton.challenge.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "trade_entity")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class TradeEntity {

    @Id
    @SequenceGenerator(name = "tradeSeqGen", sequenceName = "tradeSeqGen", initialValue = 1, allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "tradeSeqGen")
    @Column(name="trade_id", unique=true, nullable=false)
    private Long id;

    @Column(nullable = false)
    private Long buyOrderId;

    @Column(nullable = false)
    private Long sellOrderId;

    @Column(nullable = false)
    private Date createdDateTime;

    @Column(nullable = false, precision = 2)
    private Double price;

    @Column(nullable = false, precision = 2)
    private Double quantity;
}
