package com.jingdianjichi.subject.common.enums;

import lombok.Getter;

@Getter
public enum SubjectTypeEnum {
    SINGLE_CHOICE(1, "单选题"),
    MULTIPLE_CHOICE(2, "多选题"),
    JUDGMENT(3, "判断题"),
    BRIEF_ANSWER(4, "简答题");

    private final Integer type;
    private final String description;

    SubjectTypeEnum(Integer type, String description) {
        this.type = type;
        this.description = description;
    }

    public static boolean isValidType(Integer type) {
        if (type == null) {
            return false;
        }
        for (SubjectTypeEnum value : SubjectTypeEnum.values()) {
            if (value.getType().equals(type)) {
                return true;
            }
        }
        return false;
    }
} 