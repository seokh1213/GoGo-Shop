package com.gogo.gogoshop.repository;

import com.gogo.gogoshop.entity.View;
import com.gogo.gogoshop.enums.ViewType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ViewRepository extends JpaRepository<View, Long> {
    View findByViewTypeAndHidden(ViewType viewType, boolean hidden);

}
