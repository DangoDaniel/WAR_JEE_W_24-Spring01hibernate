package pl.coderslab.repository;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.entity.Book;
import java.util.List;
import java.util.Optional;

public interface BookRepository extends JpaRepository<Book,Long> {
    @Override
    @EntityGraph(attributePaths = {"publisher", "authors"})
    List<Book> findAll();

    @Override
    @EntityGraph(attributePaths = {"publisher", "authors"})
    Optional<Book> findById(Long id);
}
