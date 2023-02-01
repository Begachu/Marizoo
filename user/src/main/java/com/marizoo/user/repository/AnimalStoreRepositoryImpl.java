package com.marizoo.user.repository;

import com.marizoo.user.entity.AnimalStore;
import com.marizoo.user.entity.QAnimal;
import com.marizoo.user.entity.QAnimalStore;
import com.marizoo.user.entity.QSpecies;
import com.querydsl.jpa.JPAExpressions;
import com.querydsl.jpa.impl.JPAQueryFactory;

import javax.persistence.EntityManager;
import java.util.List;

import static com.marizoo.user.entity.QAnimal.animal;
import static com.marizoo.user.entity.QAnimalStore.animalStore;
import static com.marizoo.user.entity.QSpecies.species;

public class AnimalStoreRepositoryImpl implements AnimalStoreRepositoryCustom{

    private final JPAQueryFactory queryFactory;
    public AnimalStoreRepositoryImpl(EntityManager em){
        this.queryFactory = new JPAQueryFactory(em);
    }

    @Override
    public List<AnimalStore> searchAnimalStoreHavingSpecies(String input) {

        List<AnimalStore> findAnimalStore = queryFactory
                .select(animal.animalStore)
                .from(animal)
                .join(animal.species, species)
                .where(species.classification.like(input))
                .fetch();

        return findAnimalStore;
    }
}
