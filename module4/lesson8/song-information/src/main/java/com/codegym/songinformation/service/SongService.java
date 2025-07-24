package com.codegym.songinformation.service;

import com.codegym.songinformation.model.Song;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;

@Service
public class SongService implements ISongService {

    private final List<Song> songs = new ArrayList<>();

    @Override
    public void save(Song song) {
        song.setId((long) (songs.size() + 1));
        songs.add(song);
    }

    @Override
    public List<Song> findAll() {
        return songs;
    }
}