Object subclass: #Auto
	instanceVariableNames: 'patente modelo color cantKmRecorridos'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoPractico2'!
!Auto commentStamp: 'CMV 4/12/2016 22:05' prior: 0!
La clase auto permite instanciar objetos del tipo auto.

An Auto is xxxxxxxxx.

Instance Variables
	cantKmRecorridos:		<Object>
	color:		<Object>
	modelo:		<Object>
	patente:		<Object>

cantKmRecorridos
	- xxxxx

color
	- xxxxx

modelo
	- xxxxx

patente
	- xxxxx
!


!Auto methodsFor: 'modificadores' stamp: 'CMV 3/29/2016 18:21'!
setColor: unColor
	color := unColor.! !

!Auto methodsFor: 'modificadores' stamp: 'CMV 3/29/2016 18:21'!
setModelo: unModelo
	modelo := unModelo.! !

!Auto methodsFor: 'modificadores' stamp: 'CMV 3/29/2016 18:20'!
setPatente: unaPatente
	patente := unaPatente.! !


!Auto methodsFor: 'aplicacion' stamp: 'CMV 4/12/2016 19:29'!
andarKm: n
	"Suma n kilometros adicionales al kilometraje recorrido."
	
	cantKmRecorridos := cantKmRecorridos + n.! !


!Auto methodsFor: 'visualizadores' stamp: 'CMV 3/29/2016 21:09'!
getCantKmRecorridos
	^cantKmRecorridos.! !

!Auto methodsFor: 'visualizadores' stamp: 'CMV 3/29/2016 18:14'!
getColor
	^color! !

!Auto methodsFor: 'visualizadores' stamp: 'CMV 3/29/2016 18:15'!
getModelo
	^modelo! !

!Auto methodsFor: 'visualizadores' stamp: 'CMV 3/29/2016 18:17'!
getPatente
	^patente! !


!Auto methodsFor: 'inicializadores' stamp: 'CMV 4/12/2016 19:28'!
patente: unaPatente modelo: unModelo color: unColor
	"Inicializa las variables de instancia."

	patente := unaPatente.
	modelo := unModelo.
	color := unColor.
	cantKmRecorridos := 0.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Auto class
	instanceVariableNames: ''!

!Auto class methodsFor: 'as yet unclassified' stamp: 'CMV 4/4/2016 20:23'!
patente: unaPatente modelo: unModelo color: unColor
	"Crea una instancia de un auto"

	| a |
	a := self new.
	a patente: unaPatente modelo: unModelo color: unColor.
	^a! !


Object subclass: #Camion
	instanceVariableNames: 'matricula tipo kmactual kmservice tara'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoPractico2'!


!Camion methodsFor: 'aplicacion' stamp: 'CMV 3/29/2016 21:46'!
verificarTara: n
	"Verifica si el valor supera a la tara"
	
	^ n > tara.! !


!Camion methodsFor: 'inicializadores' stamp: 'CMV 3/29/2016 21:40'!
matricula: unaMatricula tipo: unTipo kmactual: unKmactual kmservice: unKmservice tara: unPeso
	matricula := unaMatricula.
	tipo := unTipo.
	kmactual := unKmactual.
	kmservice := unKmservice.
	tara := unPeso.! !


!Camion methodsFor: 'visualizadores' stamp: 'CMV 3/29/2016 21:31'!
getKmactual
	^kmactual! !

!Camion methodsFor: 'visualizadores' stamp: 'CMV 3/29/2016 21:31'!
getKmservice
	^kmservice! !

!Camion methodsFor: 'visualizadores' stamp: 'CMV 3/29/2016 21:30'!
getMatricula
	^matricula! !

!Camion methodsFor: 'visualizadores' stamp: 'CMV 3/29/2016 21:31'!
getTara
	^tara! !

!Camion methodsFor: 'visualizadores' stamp: 'CMV 3/29/2016 21:30'!
getTipo
	^tipo! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Camion class
	instanceVariableNames: ''!

!Camion class methodsFor: 'as yet unclassified' stamp: 'CMV 4/4/2016 20:27'!
matricula: matri tipo: unTipo kmactual: km kmservice: service tara: peso
	"Crea una instancia de un auto"

	| a |
	a := self new.
	a matricula: matri tipo: unTipo kmactual: km kmservice: service tara: peso.
	^a! !


Object subclass: #Cliente
	instanceVariableNames: 'nombre apellido dni telefono nombreTarjeta fechaVencimiento'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoPractico2'!

!Cliente methodsFor: 'aplicacion' stamp: 'CMV 4/9/2016 20:21'!
verificarVencimiento
	"Tiempo en dias hasta que venza la tarjeta"

	^fechaVencimiento subtractDate: Date today.! !


!Cliente methodsFor: 'modificadores' stamp: 'CMV 4/12/2016 19:30'!
setTelefono: tel
	"Modifica el numero de telefono."

	telefono := tel! !


!Cliente methodsFor: 'visualizadores' stamp: 'CMV 4/12/2016 19:29'!
getApellido
	^apellido! !

!Cliente methodsFor: 'visualizadores' stamp: 'CMV 4/12/2016 19:29'!
getDNI
	^dni! !

!Cliente methodsFor: 'visualizadores' stamp: 'CMV 4/12/2016 19:29'!
getNombre
	^nombre! !

!Cliente methodsFor: 'visualizadores' stamp: 'CMV 4/12/2016 19:29'!
getTarjeta
	^nombreTarjeta! !

!Cliente methodsFor: 'visualizadores' stamp: 'CMV 4/12/2016 19:29'!
getTelefono
	^telefono! !

!Cliente methodsFor: 'visualizadores' stamp: 'CMV 4/12/2016 19:29'!
getVencimiento
	^fechaVencimiento! !


!Cliente methodsFor: 'inicializadores' stamp: 'CMV 4/9/2016 20:22'!
nombre: nom apellido: ape dni: documento telefono: tel tarjeta: tarj vencimiento: fecha
	"Inicializa las variables de instancia"

	nombre := nom.
	apellido := ape.
	dni := documento.
	telefono := tel.
	nombreTarjeta := tarj.
	fechaVencimiento := fecha.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Cliente class
	instanceVariableNames: ''!

!Cliente class methodsFor: 'as yet unclassified' stamp: 'CMV 4/4/2016 20:29'!
nombre: nombre apellido: apellido dni: dni telefono: telefono tarjeta: nombreTarjeta vencimiento: fechaVencimiento
	"Método de clase crea objetos clientes"

	| cliente |
	cliente := self new.
	cliente nombre: nombre apellido: apellido dni: dni telefono: telefono tarjeta: nombreTarjeta vencimiento: fechaVencimiento.
	^cliente! !


Object subclass: #Contador
	instanceVariableNames: 'valor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoPractico2'!

!Contador methodsFor: 'aplicacion' stamp: 'CMV 4/12/2016 19:52'!
decrementar
	valor := valor - 1! !

!Contador methodsFor: 'aplicacion' stamp: 'CMV 4/12/2016 19:53'!
decrementar: cant
	valor := valor - cant! !

!Contador methodsFor: 'aplicacion' stamp: 'CMV 4/12/2016 19:53'!
incrementar
	valor := valor + 1! !

!Contador methodsFor: 'aplicacion' stamp: 'CMV 4/12/2016 19:53'!
mostrarValor
	^valor! !


!Contador methodsFor: 'inicializadores' stamp: 'CMV 4/12/2016 19:52'!
inicializar: n
	"Inicializa un objeto contador."

	valor := n! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Contador class
	instanceVariableNames: ''!

!Contador class methodsFor: 'as yet unclassified' stamp: 'CMV 4/12/2016 22:13'!
inicializar: n
	"Crea un nuevo contador."

	| unValor |
	unValor := self new.
	unValor inicializar: n.
	
	^unValor! !


Object subclass: #Dado
	instanceVariableNames: 'numero'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoPractico2'!

!Dado methodsFor: 'aplicacion' stamp: 'CMV 4/12/2016 21:59'!
tirarValor: unValor

	3 timesRepeat: [self lanzar. 
		                   (unValor = numero) ifTrue: [^true]].
	
	^false! !

!Dado methodsFor: 'aplicacion' stamp: 'CMV 4/12/2016 21:45'!
verDado
	^numero! !


!Dado methodsFor: 'inicializacion' stamp: 'CMV 4/12/2016 21:44'!
lanzar
    numero := 6 atRandom! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Dado class
	instanceVariableNames: ''!

!Dado class methodsFor: 'as yet unclassified' stamp: 'CMV 4/12/2016 22:13'!
crearDado
	"Crea un nuevo dado."

	| dado |
	dado := self new.
	dado lanzar.
	^dado! !


Object subclass: #Persona
	instanceVariableNames: 'nombre apellido fechaNacimiento'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoPractico2'!

!Persona methodsFor: 'inicializadores' stamp: 'CMV 4/12/2016 19:32'!
nombre: nom apellido: ape nacimiento: nac
	"Inicializa una persona."

	nombre := nom.
	apellido := ape.
	fechaNacimiento := nac.! !


!Persona methodsFor: 'aplicacion' stamp: 'CMV 4/12/2016 19:43'!
edad
	^Date today year - fechaNacimiento year! !

!Persona methodsFor: 'aplicacion' stamp: 'CMV 4/12/2016 19:46'!
esMayorEdad
	"Determina si la persona es mayor de edad."

	^self edad > 18! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Persona class
	instanceVariableNames: ''!

!Persona class methodsFor: 'as yet unclassified' stamp: 'CMV 4/12/2016 19:35'!
nombre: nom apellido: ape nacimiento: nac
	"Crea una nueva persona"

	| persona |
	persona := self new.
	persona nombre: nom apellido: ape nacimiento: nac.
	^persona! !


Object subclass: #Proyecto
	instanceVariableNames: 'tema aFavor enContra'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoPractico2'!

!Proyecto methodsFor: 'aplicacion' stamp: 'CMV 4/11/2016 14:58'!
contra
	"comment stating purpose of message"

	enContra := enContra + 1.! !

!Proyecto methodsFor: 'aplicacion' stamp: 'CMV 4/11/2016 14:57'!
contra: n
	"comment stating purpose of message"

	enContra := enContra + n.! !

!Proyecto methodsFor: 'aplicacion' stamp: 'CMV 4/11/2016 15:05'!
estado
	"comment stating purpose of message"

	^'Tema: ', tema, '. A favor: ', aFavor printString, ' en contra ', enContra printString! !

!Proyecto methodsFor: 'aplicacion' stamp: 'CMV 4/11/2016 14:57'!
favor
	"comment stating purpose of message"

	aFavor := aFavor + 1.! !

!Proyecto methodsFor: 'aplicacion' stamp: 'CMV 4/11/2016 14:57'!
favor: n
	"comment stating purpose of message"

	aFavor := aFavor + n.! !

!Proyecto methodsFor: 'aplicacion' stamp: 'CMV 4/11/2016 14:56'!
iniciaTema: unTema
	"comment stating purpose of message"

	tema := unTema.
	aFavor := 0.
	enContra := 0.! !


!Proyecto methodsFor: 'inicializadores' stamp: 'CMV 4/11/2016 14:53'!
iniciarTema: unTema favor: favor contra: contra
	"Inicializa un proyecto"

	tema := unTema.
	aFavor := favor.
	enContra := contra.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Proyecto class
	instanceVariableNames: ''!

!Proyecto class methodsFor: 'as yet unclassified' stamp: 'CMV 4/11/2016 14:54'!
nuevoProyectoTema: unTema favor: fav contra: cont
	"Crea un nuevo tema"

	| tema |
	tema := self new.
	tema iniciarTema: unTema favor: fav contra: cont.
	^tema! !


Object subclass: #Vagon
	instanceVariableNames: 'anioInstalacion largo ancho peso cantidadPasajeros'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoPractico2'!

!Vagon methodsFor: 'aplicacion' stamp: 'CMV 4/9/2016 21:38'!
actualizarPeso: k
	"comment stating purpose of message"

	peso := cantidadPasajeros * k! !

!Vagon methodsFor: 'aplicacion' stamp: 'CMV 4/9/2016 21:49'!
verificarAntiguedad
	"comment stating purpose of message"

	^(DateAndTime today) year - anioInstalacion! !


!Vagon methodsFor: 'inicializadores' stamp: 'CMV 4/9/2016 21:10'!
anioInstalacion: anio largo: lar ancho: an cantidadPasajeros: cant
	"comment stating purpose of message"

	anioInstalacion := anio.
	largo := lar.
	ancho := an.
	cantidadPasajeros := cant.
	peso := cantidadPasajeros * 80.! !


!Vagon methodsFor: 'visualizadores' stamp: 'CMV 4/9/2016 21:07'!
getAncho
	"comment stating purpose of message"

	^ancho! !

!Vagon methodsFor: 'visualizadores' stamp: 'CMV 4/9/2016 21:06'!
getAnioInstalacion
	"comment stating purpose of message"

	 ^anioInstalacion! !

!Vagon methodsFor: 'visualizadores' stamp: 'CMV 4/9/2016 21:08'!
getCantPasajeros
	"comment stating purpose of message"

	^cantidadPasajeros! !

!Vagon methodsFor: 'visualizadores' stamp: 'CMV 4/9/2016 21:06'!
getLargo
	"comment stating purpose of message"

	^largo! !

!Vagon methodsFor: 'visualizadores' stamp: 'CMV 4/9/2016 21:08'!
getPeso
	"comment stating purpose of message"

	^peso! !


"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Vagon class
	instanceVariableNames: ''!

!Vagon class methodsFor: 'as yet unclassified' stamp: 'CMV 4/9/2016 21:54'!
anioInstalacion: anio largo: lar ancho: an cantidadPasajeros: cant
	"Crea un vagón nuevo"

	| vagon |
	vagon := self new.
	vagon anioInstalacion: anio largo: lar ancho: an cantidadPasajeros: cant.
	^vagon! !
