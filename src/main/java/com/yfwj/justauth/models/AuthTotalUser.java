package com.yfwj.justauth.models;

import me.zhyd.oauth.model.AuthUser;

public class AuthTotalUser extends AuthUser {
    private String birthDate;

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }
}
