package com.sof3012.constant;

public enum ConstantEvent {
    SHARE("Shared"),
    HISTORY("History"),
    FAVORITE("Favorite"),
    COMMENT("Comment"),;

    private String value;

    ConstantEvent(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }
}
