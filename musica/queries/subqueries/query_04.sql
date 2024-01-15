use musica;

select titol, duracio
from canço c
where duracio = (
	select max(duracio)
    from canço
)
order by titol;
