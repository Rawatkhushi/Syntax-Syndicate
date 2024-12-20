package com.model;

import java.time.LocalDateTime;

public class Event {
    private int eventId;
    private String eventName;
    private String location;
    private LocalDateTime eventDate;
    private String description;
    private int organizerId;

    public Event() {
        super();
    }

    public Event(int eventId, String eventName, String location, LocalDateTime eventDate, String description, int organizerId) {
        this.eventId = eventId;
        this.eventName = eventName;
        this.location = location;
        this.eventDate = eventDate;
        this.description = description;
        this.organizerId = organizerId;
    }

    public int getEventId() {
        return eventId;
    }

    public void setEventId(int eventId) {
        this.eventId = eventId;
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public LocalDateTime getEventDate() {
        return eventDate;
    }

    public void setEventDate(LocalDateTime eventDate) {
        this.eventDate = eventDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getOrganizerId() {
        return organizerId;
    }

    public void setOrganizerId(int organizerId) {
        this.organizerId = organizerId;
    }

    @Override
    public String toString() {
        return "Event{" +
                "eventId=" + eventId +
                ", eventName='" + eventName + '\'' +
                ", location='" + location + '\'' +
                ", eventDate=" + eventDate +
                ", description='" + description + '\'' +
                ", organizerId=" + organizerId +
                '}';
    }
}
