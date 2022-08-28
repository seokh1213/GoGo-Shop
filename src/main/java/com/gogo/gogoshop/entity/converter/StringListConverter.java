package com.gogo.gogoshop.entity.converter;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

@Converter
public class StringListConverter implements AttributeConverter<List<String>, String> {
    private static final String SPLIT_CHAR = ",";

    @Override
    public String convertToDatabaseColumn(List<String> attribute) {
        return Objects.nonNull(attribute) ? String.join(SPLIT_CHAR, attribute) : "";
    }

    @Override
    public List<String> convertToEntityAttribute(String dbData) {
        return Objects.nonNull(dbData) ? List.of(dbData.split(SPLIT_CHAR)) : Collections.emptyList();
    }
}
