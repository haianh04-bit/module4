package com.codegym.songinformation.model;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Song {

    private Long id;
    @NotBlank
    @Size(max=800)
    @Pattern(regexp = "^[\\p{L}0-9\\s]+$")
    private String name;

    @NotBlank
    @Size(max=300)
    @Pattern(regexp = "^[\\p{L}0-9\\s]+$")
    private String artist;

    @NotBlank
    @Size(max=1000)
    @Pattern(regexp = "^[\\p{L}0-9\\s,]+$")
    private String genre;

    public Song() {
    }

    public Song(Long id, String name, String artist, String genre) {
        this.id = id;
        this.name = name;
        this.artist = artist;
        this.genre = genre;
    }

    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getArtist() {
        return artist;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }
}
