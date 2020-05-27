const fila = document.querySelector('.content-carusel');
const marcas = document.querySelectorAll('.marca');

const flechaIzquierda= document.getElementById('flecha-izquierdas');
const flechaDerecha= document.getElementById('flecha-derechas');

flechaDerecha.addEventListener('click', () => {
  fila.scrollLeft += fila.offsetWidth;

  const indicadorActivo =document.querySelector('.indicadores .activo');
  if(indicadorActivo.nextSibling){
    indicadorActivo.nextSibling.classList.add('activo');
    indicadorActivo.classList.remove('activo');
  }
});

flechaIzquierda.addEventListener('click', () => {
  fila.scrollLeft -= fila.offsetWidth;
  const indicadorActivo =document.querySelector('.indicadores .activo');
  if(indicadorActivo.previousSibling){
    indicadorActivo.previousSibling.classList.add('activo');
    indicadorActivo.classList.remove('activo');
  }
});

const numeroPaginas = Math.ceil(marcas.length / 5);
for(let i = 0; i< numeroPaginas; i++){
  const indicador =    document.createElement('button');
if(i===0){
  indicador.classList.add('activo');
}

  document.querySelector('.indicadores').appendChild(indicador);
  indicador.addEventListener('click', (e) => {
fila.scrollLeft = i * fila.offsetWidth;

document.querySelector('.indicadores .activo').classList.remove('activo');
e.target.classList.add('activo');

});
}

marcas.forEach((marca) => {
  marca.addEventListener('mouseenter', (e) => {
    const elemento = e.currentTarget;
    setTimeout(() =>{
      marcas.forEach(marca => marca.classList.remove('hover'));
      elemento.classList.add('hover');
    },100);
  });
});

fila.addEventListener('mouseleave', () =>{
  marcas.forEach(marca => marca.classList.remove('hover'));
});
