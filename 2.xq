for $autor in distinct-values(doc("biblioteca.xml")//autor)
let $libros := doc("biblioteca.xml")//libro[autor = $autor]
where count($libros) > 1
return <resultado>{$autor} - Total: {count($libros)} Libros</resultado>