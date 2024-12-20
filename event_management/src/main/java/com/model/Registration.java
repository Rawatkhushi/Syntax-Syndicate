package com.model;

import java.time.LocalDateTime;

public class Registration {
    private int registrationId;
    private int userId;
    private int eventId;
    private LocalDateTime registrationDate;

    public Registration() {
        super();
    }

    public Registration(int registrationId, int userId, int eventId, LocalDateTime registrationDate) {
        this.registrationId = registrationId;
        this.userId = userId;
        this.eventId = eventId;
        this.registrationDate = registrationDate;
    }

    public int getRegistrationId() {
        return registrationId;
    }

    public void setRegistrationId(int registrationId) {
        this.registrationId = registrationId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getEventId() {
        return eventId;
    }

    public void setEventId(int eventId) {
        this.eventId = eventId;
    }

    public LocalDateTime getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(LocalDateTime registrationDate) {
        this.registrationDate = registrationDate;
    }

    @Override
    public String toString() {
        return "Registration{" +
                "registrationId=" + registrationId +
                ", userId=" + userId +
                ", eventId=" + eventId +
                ", registrationDate=" + registrationDate +
                '}';
    }
}