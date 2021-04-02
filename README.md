# IMUNES-MULTI-IDIOMA
Repositorio dedicado a la traducción a diferentes idiomas del  Simulador/Emulador IMUNES

Saludos a toda la comunidad IMUNES

Como profesor universitario tengo muchos años usando IMUNES como herramienta principal para las enseñanza de las Redes IP. En la Universidad donde trabajo (UPT-Aragua VENEZUELA) hemos realizados muchos proyectos alrededor de IMUNES agregandoles muchas otras aplicaciones, por ahora les comparto la Versión de IMUNES Multi Idiomas Internacionalizada o Localizada como se les dice tambien.

Estoy buscando colaboradores para traducir fidelignamente a IMUNES, en diferentes idiomas preferiblemente Alemán, Francés, Italiano, Croata, Húngaro, Portugués y Ruso. Por consiguiente las personas interesadas deberan ser de la Nacionalidad en cuestion, trabajar en el área y conocer a IMUNES preferiblemente, sin embargo, esta abierta la opción para todos.

Mi correo de contacto es panake2000@gmail.com.

La version utilizada para implementar esta traducción fue: IMUNES v2.3.0

Con algunas modificaciones en la versión de IMUNES 2.3.0 he internacionalizado imunes en varios idiomas:

Español (Traducción garantizada y confiable)

Alemán (Traducción con la App google Traductor. No garantizada no confiable)

Francés (Traducción con la App google Traductor. No garantizada no confiable)

Croata (Traducción con la App google Traductor. No garantizada no confiable)

Húngaro (Traducción con la App google Traductor. No garantizada no confiable)

Italiano (Traducción con la App google Traductor. No garantizada no confiable)

Portugués (Traducción con la App google Traductor. No garantizada no confiable)

Ruso (Traducción con la App google Traductor. No garantizada no confiable)


Dependiendo de la codificación y el Locale del servidor, IMUNES se traduce automáticamente.
El servidor FreeBSD 12.2 tiene locale es_ES y codificación UTF-8.

Los archivos levemente modificados son:

Archivos Principales en:

cd /usr/local/lib/imunes/

-- gui/canvas.tcl

-- gui/drawing.tcl

-- gui/initgui.tcl (principal) Botón Menú idioma no funciona. (Por ahora)

-- gui/mouse.tcl (Agregadas otras opciones) Apache24, DNS bind 916, DHCP, Terminal Sakur

-- nodes/click_l2.tcl

-- nodes/click_l3.tcl

-- nodes/filter.tcl

-- nodes/genericrouter.tcl

-- nodes/host.tcl

-- nodes/hub.tcl

-- nodes/ipfirewall.tcl

-- nodes/lanswitch.tcl

-- nodes/nat64.tcl

-- nodes/packgen.tcl

-- nodes/rj45.tcl

-- stpswitch.tcl

-- runtime/eventsched.tcl


Las opciones de menú siguientes no fueron traducidas porque aparecía un error porque no se esperaba esa palabra traducida si no la original, ejemplo "Execute": Para corregirlo se necesita editar los archivos drawing.tcl, exec.tcl, initgui.tcl y algún otro que no vi.

Opciones de menú no traducidas

-- Undo

-- Redo

-- Auto rearrange all

-- Auto rearrange selected

-- Routing protocol defaults

-- Execute

-- Terminate (No presenta problemas si se traduce)

-- Restart

-- Start scheduling (opcion de menu relacionada con el archivo eventsched.tcl)

-- Stop scheduling




