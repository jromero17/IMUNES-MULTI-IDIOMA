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
Se agrego un boton para seleccionar el idioma, luego de reiniciar imunes, se presenta el nuevo idioma.
La opción de traducción automatica se deshabilito, pensando en la preferencia de idioma por parte del usuario.

Los archivos levemente modificados son:

Archivos Principales en:

cd /usr/local/lib/imunes/

-- gui/canvas.tcl

-- gui/drawing.tcl

-- gui/initgui.tcl (principal) Botón Menú idioma funcionando.

-- gui/mouse.tcl (Agregadas otras opciones) Apache24, DNS bind 916, DHCP, Terminal Sakura

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


Para la traducción se creo un directorio llamado msgs dentro del directorio /usr/local/lib/imunes/gui/

Este directorio (msgs) contiene los siguientes archivos:

-- de.msg

-- en.msg

-- es.msg

-- fr.msg

-- hr.msg

-- hu.msg

-- it.msg

-- pt.msg

-- ru.msg

Si alguien quiere traducir IMUNES a otro idioma, solo tome como referencia cualquiera de los archivos aqui propuestos y traduzca directamente.

IMUNES se traducirá al idioma que este configurado en el servidor, es decir, el locale en_US, es_ES, es_VE, it_IT, ru_RU entre otros. Es importante que la codificación del servidor sea totalmente UTF-8 para evitar problemas con acentos, tides y la letra ñ. Ahora es posible cambiar de idioma mediante un botón.

### Agregando FRR7 en lugar de Quagga, para FreeBSD 13.0

Para FreeBSD 13.0, se agregó FRR7 en lugar de Quagga, a causa de que éste dejó de funcionar en FreeBSD 13.0, presentando problemas para poder escribir las tablas de rutas en el kernel del sistema operativo.

Usando FRR7 se soluciona el problema. Un ejemplo usando OSPF y una topologia NBMA, funciona tanto usando Quagga en FreeBSD 12.2, y FRR7 en FreeBSD 13.0.

FRRouting (FRR) es un conjunto de protocolos de enrutamiento de Internet de código abierto y gratuito para plataformas Linux y Unix. Implementa BGP, OSPF, RIP, IS-IS, PIM, LDP, BFD, Babel, PBR, OpenFabric y VRRP, con soporte alfa para EIGRP y NHRP.

La perfecta integración de FRR con las pilas de redes IP nativas de Linux/Unix lo convierte en una pila de enrutamiento de propósito general aplicable a una amplia variedad de casos de uso, incluida la conexión de hosts/VM/contenedores a la red, publicidad de servicios de red, conmutación y enrutamiento de LAN, enrutadores de acceso a Internet, y peering de Internet.

FRR tiene sus raíces en el proyecto Quagga. De hecho, fue iniciado por muchos desarrolladores de Quagga desde hace mucho tiempo que combinaron sus esfuerzos para mejorar la base bien establecida de Quagga con el fin de crear la mejor pila de protocolos de enrutamiento disponible. Actualmente va por la versión 8.0.

La versión instalada para dar soporte a FreeBSD 13.0 fue frr7-7.5_1. Posteriormente fue compilada para dar soporte a SNMP, que por defecto esta desabilitada.

