package com.sinut.movies.movie;

import lombok.RequiredArgsConstructor;
import org.bson.types.ObjectId;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class MovieService {
    private final MovieRepository movieRepository;

    public List<Movie> allMovies() {
        return movieRepository.findAll();
    }
    
    public Optional<Movie> getMovieById(ObjectId id) {
        return movieRepository.findById(id);
    }
}
