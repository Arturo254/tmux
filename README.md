![Picsart_23-08-16_18-27-03-527](https://github.com/Arturo254/tmux/assets/87346871/94cf0215-a658-4062-8d9e-0e5820f9e2ef)

# tmux
Una nueva interfaz de tmux

# Instalación :

```bash

git clone https://github.com/Arturo254/tmux

cd tmux/

chmod 777 *

bash tmux.sh

```

Requirements:

  - tmux **`>= 2.4`** running inside Linux, Mac, OpenBSD, Cygwin or WSL
  - awk, perl and sed
  - outside of tmux, `$TERM` must be set to `xterm-256color`

# tmux accesos directos y hoja de trucos

comenzar nuevo:

    tmux

empezar de nuevo con el nombre de la sesión:

    tmux nuevo -s mi nombre

adjuntar:

    tmux a # (o en, o adjuntar)

adjuntar a nombrado:

    tmux a -t mi nombre

enumerar sesiones:

    tmux ls

matar sesión:

    tmux kill-session -t mi nombre

En tmux, presiona el prefijo `ctrl+b` (mi prefijo modificado es ctrl+a) y luego:

## Sesiones

    :nuevo<CR> nueva sesión
    sesiones de lista s
    $ sesión de nombre

## Ventanas (pestañas)

    c nueva ventana
    ventanas de lista w
    f encontrar ventana
    , ventana de nombre
    & matar ventana
    última ventana abierta
    n siguiente ventana
    p ventana anterior
    

## Paneles (divisiones)

    % división vertical
    división horizontal
    
    o intercambiar paneles
    q mostrar números de panel
    x matar panel
    + romper el panel en la ventana (por ejemplo, para seleccionar texto con el mouse para copiar)
    - restaurar el panel desde la ventana
    ⍽ espacio - alternar entre diseños
    PREFIJO q (Mostrar números de panel, cuando aparezcan los números, escriba la tecla para ir a ese panel)
    PREFIJO { (Mover el panel actual a la izquierda)
    PREFIJO } (Mover el panel actual a la derecha)

## Cambiar el tamaño de los paneles

También puede cambiar el tamaño de los paneles si no le gustan los valores predeterminados de diseño. Personalmente, rara vez necesito hacer esto, aunque es útil saber cómo. Esta es la sintaxis básica para cambiar el tamaño de los paneles:

    PREFIJO: cambiar el tamaño del panel (por defecto, cambia el tamaño del panel actual hacia abajo)
    PREFIJO : resize-pane -U (Redimensiona el panel actual hacia arriba)
    PREFIJO : resize-pane -L (Cambia el tamaño del panel actual a la izquierda)
    PREFIJO : resize-pane -R (Cambia el tamaño del panel actual a la derecha)
    PREFIJO : resize-pane 20 (Redimensiona el panel actual 20 celdas hacia abajo)
    PREFIJO: cambiar el tamaño del panel -U 20 (cambia el tamaño del panel actual hacia arriba en 20 celdas)
    PREFIJO : resize-pane -L 20 (Cambia el tamaño del panel actual por 20 celdas)
    PREFIJO : resize-pane -R 20 (Redimensiona el panel actual 20 celdas a la derecha)
    PREFIJO : resize-pane -t 2 20 (Redimensiona el panel con el id de 2 hacia abajo 20 celdas)
    PREFIJO: resize-pane -t -L 20 (Cambia el tamaño del panel con la identificación de 2 a la izquierda por 20 celdas)

## Modo de copia:

Pulsando PREFIX [ nos pone en modo Copiar. Luego podemos usar nuestras teclas de movimiento para mover el cursor por la pantalla. De forma predeterminada, las teclas de flecha funcionan. configuramos nuestro archivo de configuración para usar las teclas Vim para moverse entre ventanas y cambiar el tamaño de los paneles para que no tengamos que quitar las manos de la fila de inicio. tmux también tiene un modo vi para trabajar con el búfer. Para habilitarlo, agregue esta línea a .tmux.conf:

    setw -g modo-teclas vi

Con esta opción configurada, podemos usar h, j, k y l para movernos por nuestro búfer.

Para salir del modo Copiar, simplemente presionamos la tecla ENTER. Mover un personaje a la vez no es muy eficiente. Dado que habilitamos el modo vi, también podemos usar otros atajos visibles para movernos por el búfer.

Por ejemplo, podemos usar "w" para saltar a la siguiente palabra y "b" para retroceder una palabra. Y podemos usar "f", seguida de cualquier carácter, para saltar a ese carácter en la misma línea, y "F" para saltar hacia atrás en la línea.

       Función vi emacs
       Volver a sangría ^ Mm
       Borrar selección Escape Cg
       Copiar selección Introducir Mw
       Cursor abajo j Abajo
       Cursor izquierda h Izquierda
       Cursor derecha l Derecha
       Cursor a la línea inferior L
       Cursor a la línea media M Sr.
       Cursor a la línea superior H MR
       Cursor arriba k Arriba
       Eliminar toda la línea d Cu
       Eliminar hasta el final de la línea D Ck
       Fin de línea $ Ce
       Ir a línea: g
       Media página hacia abajo Cd M-Down
       Media página arriba Cu M-Up
       Página siguiente Cf Página abajo
       Siguiente palabra w Mf
       Pegar tampón p Cy
       Página anterior Cb Re Pág
       Palabra anterior b Mb
       Salir del modo q Escape
       Desplácese hacia abajo C-Abajo o J C-Abajo
       Desplácese hacia arriba C-Up o K C-Up
       Buscar de nuevo nn
       ¿Buscar hacia atrás? cr
       Buscar hacia adelante / Cs
       Comienzo de línea 0 Ca
       Iniciar selección Espacio C-Espacio
       Transponer caracteres Ct

## Varios

    separar
    t gran reloj
    ? lista de accesos directos
    : inmediato

## Opciones de configuración:

    # Compatibilidad con el mouse: actívelo si desea usar el mouse
    * setw -g mode-mouse off
    * establecer -g ratón-seleccionar-panel desactivado
    * establecer -g ratón-cambiar el tamaño-panel apagado
    * establecer -g ratón-seleccionar-ventana desactivada

    # Establecer el modo de terminal predeterminado en modo de 256 colores
    establecer -g terminal predeterminado "pantalla-256color"

    # habilitar alertas de actividad
    setw -g monitor-actividad en
    establecer -g actividad visual en

    # Centrar la lista de ventanas
    establecer -g estado-justificar centro

    # Maximizar y restaurar un panel
    unbind Up bind Up nueva-ventana -d -n tmp \; panel de intercambio -s tmp.1 \; ventana de selección -t tmp
    desatar abajo
    enlazar Abajo última ventana \; panel de intercambio -s tmp.1 \; matar-ventana -t tmp

## Recursos:

* [tmux: desarrollo productivo sin ratón] (http://pragprog.com/book/bhtmux/tmux)
* [Cómo reordenar ventanas](http://superuser.com/questions/343572/tmux-how-do-i-reorder-my-windows)
* [hoja de trucos] (http://cheat.errtheblog.com/s/tmux/)
