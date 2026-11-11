(function () {
    'use strict';

    // Minusculas y sin tildes, para que "administracion" encuentre "Administración"
    function normalizar(texto) {
        return (texto || '')
            .toString()
            .toLowerCase()
            .normalize('NFD')
            .replace(/[\u0300-\u036f]/g, '')
            .trim();
    }

    function iniciar() {
        var caja = document.getElementById('buscadorDepartamentos');
        var tabla = document.querySelector('table.tabla');
        var contador = document.getElementById('contadorDepartamentos');
        var sinResultados = document.getElementById('sinResultados');
        var botonLimpiar = document.getElementById('btnLimpiarBusqueda');

        if (!caja || !tabla) {
            return; // No hay buscador o la lista esta vacia
        }

        var filas = tabla.querySelectorAll('tbody tr');

        function filtrar() {
            var termino = normalizar(caja.value);
            var visibles = 0;

            filas.forEach(function (fila) {
                var celdas = fila.querySelectorAll('td');
                // Se busca en la columna Codigo y en la columna Descripcion
                var texto = normalizar(
                    (celdas[0] ? celdas[0].textContent : '') + ' ' +
                    (celdas[1] ? celdas[1].textContent : '')
                );
                var coincide = termino === '' || texto.indexOf(termino) !== -1;
                fila.style.display = coincide ? '' : 'none';
                if (coincide) {
                    visibles++;
                }
            });

            if (contador) {
                contador.textContent = 'Mostrando ' + visibles + ' de ' + filas.length + ' departamentos';
            }
            if (sinResultados) {
                sinResultados.classList.toggle('oculto', visibles !== 0);
            }
        }

        caja.addEventListener('input', filtrar);

        if (botonLimpiar) {
            botonLimpiar.addEventListener('click', function () {
                caja.value = '';
                filtrar();
                caja.focus();
            });
        }

        filtrar();
    }

    // JSF recrea la tabla al eliminar o actualizar; es necesario reactivar el buscador.
    window.alTerminarAjaxDepartamentos = function (evento) {
        if (evento && evento.status === 'success') {
            iniciar();
        }
    };

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', iniciar);
    } else {
        iniciar();
    }
})();