package com.codegym.songinformation.service;

import com.codegym.songinformation.model.Song;
import java.util.List;

public interface ISongService {
    void save(Song song);
    List<Song> findAll();
}