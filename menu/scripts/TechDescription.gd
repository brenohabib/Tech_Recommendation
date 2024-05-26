extends Node

#Info [Description]
enum {Angular, BASIC, C, Django, Elixir, Flask, Go, Haskell, Itk, Java, Python, React, Kawa, Lua, MATLAB, Nasm, OpenCL,
Prolog, QBasic, Scratch, TypeScript, Unicon, VisualBasic, WebGL, Xojo, Yorick, Zig}

const DATA = {
	Angular:
		["Angular (comumente referido como \"Angular 2+\" ou \"Angular 2\") é uma plataforma de aplicações web de código-fonte 
		aberto e front-end baseado em TypeScript liderado pela Equipe Angular do Google e por uma comunidade de indivíduos 
		e corporações. Angular é uma reescrita completa do AngularJS, feito pela mesma equipe que o construiu."],
	BASIC:
		["BASIC (acrônimo para Beginner's All-purpose Symbolic Instruction Code; em português: Código de Instruções 
		Simbólicas de Uso Geral para Principiantes) é uma linguagem de programação, criada com fins didáticos, pelos 
		professores John George Kemeny, Thomas Eugene Kurtz e Mary Kenneth Keller em 1964 no Dartmouth College. \n
		Basic pode ser uma opção de linguagem para se aprender lógica, uma vez que foi desenvolvida em alto nível 
		(próxima da linguagem humana). Além da sua relativa facilidade de criar aplicações de forma simples e rápida. \n
		BASIC também é o nome genérico dado a uma grande família de linguagens de programação derivadas do BASIC original. 
		Provavelmente existem mais variações de BASIC do que de qualquer outra linguagem de programação."],
	C:
		["C é uma linguagem de programação compilada de propósito geral, estruturada, imperativa, procedural, padronizada 
		pela Organização Internacional para Padronização (ISO), criada em 1972 por Dennis Ritchie na empresa AT&T Bell Labs 
		para desenvolvimento do sistema operacional Unix (originalmente escrito em Assembly).
		\nC é uma das linguagens de programação mais populares e existem poucas arquiteturas para as quais não existem 
		compiladores para C. C tem influenciado muitas outras linguagens de programação (por exemplo, a linguagem Java), 
		mais notavelmente C++, que originalmente começou como uma extensão para C.
		\nA linguagem C encontra-se na versão/padrão internacional C17 (ISO/IEC 9899:2018) lançada em junho de 2018, substituindo a versão C11 (ISO/IEC 9899:2011),[7] disponível em ISO e IEC e com suporte para GCC8 e Clang LLVM6.[8]"],
	Django:
		["Django é um framework para desenvolvimento rápido para web, escrito em Python, que utiliza o padrão 
		model-template-view (MTV). Foi criado originalmente como sistema para gerenciar um site jornalístico na cidade 
		de Lawrence, no Kansas. Tornou-se um projeto de código aberto e foi publicado sob a licença BSD em 2005. O nome 
		Django foi inspirado no músico de jazz Django Reinhardt.
		\nDjango utiliza o princípio DRY (Don't Repeat Yourself), que propõe que o desenvolvedor aproveite ao máximo o código 
		já feito, evitando a repetição."],
	Elixir:
		["Elixir é uma linguagem de programação funcional, concorrente, de propósito geral que executa na máquina virtual
		Erlang (BEAM). Elixir compila em cima de Erlang para fornecer aplicações distribuídas, em tempo real suave, 
		tolerante a falhas, non-stop, mas também a estende para suportar metaprogramação com macros e polimorfismo via 
		protocolos.
		\nElixir é usada por empresas como E-MetroTel, Pinterest e Moz. Também é usada para desenvolvimento web, 
		por empresas como Bleacher Report, Discord e Inverse, e para a construção de sistemas embarcados. A comunidade 
		organiza eventos anuais nos Estados Unidos, Europa e Japão, além de eventos e conferências locais menores."],
	Flask:
		["Flask é um pequeno framework web escrito em Python. É classificado como um microframework porque não requer 
		ferramentas ou bibliotecas particulares, mantendo um núcleo simples, porém, extensível. Não possui camada de 
		abstração de banco de dados, validação de formulário ou quaisquer outros componentes onde bibliotecas de terceiros 
		preexistentes fornecem funções comuns. No entanto, o Flask oferece suporte a extensões que podem adicionar recursos 
		do aplicativo como se fossem implementados no próprio Flask. Existem extensões para mapeadores objeto-relacional, 
		validação de formulário, manipulação de upload, várias tecnologias de autenticação aberta e várias ferramentas comuns 
		relacionadas ao framework.
		\nAplicações que utilizam o framework Flask incluem a própria página da comunidade de desenvolvedores, o 
		Pinterest e o LinkedIn."],
	Go:
		["Go é uma linguagem de programação criada pela Google e lançada em código livre em novembro de 2009. É uma 
		linguagem compilada e focada em produtividade e programação concorrente, baseada em trabalhos feitos no sistema 
		operacional chamado Inferno. O projeto inicial da linguagem foi feito em setembro de 2007 por Robert Griesemer, Rob 
		Pike e Ken Thompson. Atualmente, há implementações para Windows, Linux, Mac OS X e FreeBSD."],
	Haskell:
		["Haskell é uma linguagem de programação puramente funcional, de propósito geral, nomeada em homenagem ao lógico 
		Haskell Curry. Como uma linguagem funcional, a estrutura de controle primária é a função; a linguagem é baseada nas
		 observações de Haskell Curry e seus descendentes intelectuais. Seu último padrão semi-oficial é o Haskell 98,
		 destinado a especificar uma versão mínima e portável da linguagem para o ensino e como base para futuras extensões.
		\nHaskell é a linguagem funcional sobre a qual mais se realizam pesquisas atualmente. Muito utilizada no meio 
		acadêmico, ė uma linguagem relativamente nova, derivada de outras linguagens funcionais, como por exemplo Miranda e
		 ML. Ela se baseia em um estilo de programação em que se enfatiza mais o que deve ser feito (what) em detrimento de 
		como deve ser feito (how). É uma linguagem que possui foco no alcance de soluções para problemas matemáticos,
		 clareza, e de fácil manutenção nos códigos, e possui uma variedade de aplicações e apesar de simples é muito 
		poderosa."],
	Itk:
		["TDL"],
	Java:
		["Java é uma linguagem de programação orientada a objetos desenvolvida na década de 90 por uma equipe 
		de programadores chefiada por James Gosling, na empresa Sun Microsystems, que em 2008 foi adquirido pela 
		empresa Oracle Corporation. Diferente das linguagens de programação modernas, que são compiladas para 
		código nativo, Java é compilada para um bytecode que é interpretado por uma máquina virtual 
		(Java Virtual Machine, abreviada JVM). A linguagem de programação Java é a linguagem convencional da 
		Plataforma Java, mas não é a sua única linguagem. A J2ME é utilizada em jogos de computador, celular, 
		calculadoras, ou até mesmo o rádio do carro."],
	Python:
		["Python é uma linguagem de programação de alto nível, interpretada de script, imperativa, orientada a objetos, 
		funcional, de tipagem dinâmica e forte. Foi lançada por Guido van Rossum em 1991. Atualmente, possui um modelo de 
		desenvolvimento comunitário, aberto e gerenciado pela organização sem fins lucrativos Python Software Foundation. 
		Apesar de várias partes da linguagem possuírem padrões e especificações formais, a linguagem, como um todo, não é 
		formalmente especificada. O padrão na pratica é a implementação CPython.
		\nA linguagem foi projetada com a filosofia de enfatizar a importância do esforço do programador sobre o esforço 
		computacional. Prioriza a legibilidade do código sobre a velocidade ou expressividade. Combina uma sintaxe concisa 
		e clara com os recursos poderosos de sua biblioteca padrão e por módulos e frameworks desenvolvidos por terceiros.
		\nPython é uma linguagem de propósito geral de alto nível, multiparadigma, suporta o paradigma 
		orientado a objetos, imperativo, funcional e procedural. Possui tipagem dinâmica e uma de suas principais 
		características é permitir a fácil leitura do código e exigir poucas linhas de código se comparado ao mesmo 
		programa em outras linguagens. Devido às suas características, ela é utilizada, principalmente, para processamento
		 de textos, dados científicos e criação de CGIs para páginas dinâmicas para a web. Foi considerada pelo público a 
		3ª linguagem \"mais amada\", de acordo com uma pesquisa conduzida pelo site Stack Overflow em 2018 e está entre
		 as 5 linguagens mais populares, de acordo com uma pesquisa conduzida pela RedMonk.
		\nO nome Python teve a sua origem no grupo humorístico britânico Monty Python,
		 criador do programa Monty Python's Flying Circus, embora muitas pessoas façam associação com o 
		réptil do mesmo nome (em português, píton ou pitão)."],
	React:
		["React (também denominado React.js ou ReactJS) é uma biblioteca front-end JavaScript de código aberto
		 com foco em criar interfaces de usuário em páginas web.
		\nCriado em 2011 pelo Facebook, com a criação de views declarativas e baseando-se em componentes, 
		possuía o intuito de otimizar a atualização e a sincronização de atividades simultâneas no feed de 
		notícias da rede social e melhorar a manutenção de código.
		\nÉ mantido pelo Facebook, Instagram, outras empresas e uma comunidade de desenvolvedores 
		individuais. É utilizado nos sites da Netflix, Imgur, Feedly, Airbnb, SeatGeek, HelloSign, Walmart e outros.
		\nEm 2015, o Facebook anunciou o módulo React Native, que em conjunto com o React, possibilita o
		 desenvolvimento de aplicativos para Android e iOS utilizando componentes de interface de usuário 
		nativos de ambas plataformas, sem precisar recorrer ao HTML.
		\nNa pesquisa de 2018 sobre hábitos de desenvolvedores do site Stack Overflow, 
		o React foi a terceira biblioteca ou framework mais citado pelos usuários e 
		desenvolvedores profissionais, ficando atrás somente do Node.js e Angular, respectivamente."],
	Kawa:
		["TDL"],
	Lua:
		["Lua é uma linguagem de programação interpretada, de script em alto nível, com tipagem dinâmica e multiparadigma, 
		reflexiva e leve, projetada por Tecgraf da PUC-Rio em 1993 para expandir aplicações em geral, de forma extensível
		 (que une partes de um programa feitas em mais de uma linguagem), para prototipagem e para ser embarcada em 
		softwares complexos, como jogos. Assemelha-se com Python, Ruby e Icon, entre outras.
		\nLua foi criada por um time de desenvolvedores do Tecgraf da PUC-Rio, a princípio, para ser usada em 
		um projeto da Petrobras. Devido à sua eficiência, clareza e facilidade de aprendizado, passou a ser usada 
		em diversos ramos da programação, como no desenvolvimento de jogos (Blizzard Entertainment, por exemplo, usou
		 a linguagem no jogo World of Warcraft), controle de robôs, processamento de texto, etc. Também é frequentemente 
		usada como uma linguagem de propósito geral.
		\nina programação procedural com poderosas construções para descrição de dados, baseadas em tabelas 
		associativas e semântica extensível. É tipada dinamicamente, interpretada a partir de bytecodes, e tem
		 gerenciamento automático de memória com coleta de lixo. Essas características fazem de Lua uma linguagem 
		ideal para configuração, automação (scripting) e prototipagem rápida."],
	MATLAB:
		["MATLAB (MATrix LABoratory) trata-se de um software interativo de alta performance voltado para o cálculo 
		numérico. O MATLAB integra análise numérica, cálculo com matrizes, processamento de sinais e construção de
		 gráficos em ambiente fácil de usar, onde problemas e soluções são expressos somente como eles são escritos
		 matematicamente, ao contrário da programação tradicional.
		\nO MATLAB é um sistema interativo cujo elemento básico de informação
		 é uma matriz que não requer dimensionamento. Esse sistema permite a resolução de
		 muitos problemas numéricos em apenas uma fração do tempo que se gastaria para escrever
		 um programa semelhante em linguagem Fortran, Basic ou C. Além disso, as soluções dos problemas
		 são expressas quase exatamente como elas são escritas matematicamente."],
	Nasm:
		["Netwide Assembler (NASM), é um montador e desmontador que suporta as arquiteturas IA-32 e x86-64.
		 O NASM permite o desenvolvimento de linguagem de baixo nível(Assembly) em diversas arquiteturas de 
		sistemas operacionais, sendo mais popular para o Linux.
		\nNASM foi originalmente escrito por Simon Tatham com a ajuda de Julian Hall. A partir de 
		2016, ela é mantida por uma pequena equipe liderada por H. Peter Anvin. É um software de código 
		aberto lançado sob os termos de uma licença BSD simplificada (2 cláusulas)."],
	OpenCL:
		["OpenCL (Open Computing Language) é uma arquitetura para escrever programas que funcionam em plataformas 
		heterogêneas, consistindo em CPUs, GPUs e outros processadores. OpenCL inclui uma linguagem (baseada em C99) para 
		escrever kernels (funções executadas em dispositivos OpenCL), além de APIs que são usadas para definir e depois
		 controlar as plataformas heterogênea. OpenCL permite programação paralela usando, tanto o paralelismo de tarefas,
		 como de dados.
		\nEla foi adotada para controladores de placas gráficas pela AMD/ATI, que a tornou na sua única oferta
		 de GPU como Stream SDK, e pela Nvidia, que oferece também OpenCL como a escolha para o
		 seu Compute Unified Device Architecture (CUDA) nos seus controladores.
		\nA arquitetura OpenCL partilha uma série de interfaces computacionais, tanto com CUDA,
		 como com a concorrente DirectCompute da Microsoft.
		\nA proposta OpenCL é similar às propostas OpenGL e OpenAL, que são padrões abertos da 
		indústria para gráficos 3D e áudio, respectivamente. OpenCL estende o poder da GPU além do
		 uso gráfico (GPGPU). OpenCL é gerido pelo consórcio tecnológico Khronos Group."],
	Prolog:
		["Prolog é uma linguagem declarativa, significando que em vez de o programa estipular a maneira de chegar à 
		solução, passo a passo, (como nas linguagens procedimentais ou imperativas), limita-se a fornecer uma descrição
		 do problema que se pretende computar. Usa uma coleção base de dados de fatos e de relações lógicas (regras) que
		 exprimem o domínio relacional do problema a resolver.
		\nUm programa pode rodar num modo interativo, a partir de consultas (queries) formuladas pelo usuário, 
		usando a base de dados (os 'fatos') e as regras relacionais (essencialmente implicações lógicas: se.. então), e 
		o mecanismo de unificação para produzir (por uma cadeia de deduções lógicas) a solução.
		\nO Prolog é baseado num subconjunto do cálculo de predicados de primeira ordem, o que 
		é definido por cláusulas de Horn. A execução de um programa em Prolog é efetivamente a 
		prova de um teorema por resolução de primeira ordem. Alguns conceitos fundamentais são 
		unificação, recursão, e backtracking."],
	QBasic:
		["QBasic é um IDE e interpretador da linguagem BASIC, 
		baseada no QuickBASIC. O código colocado no IDE é compilado numa 
		forma intermediária e imediatamente interpretada no IDE.
		 Pode ser executado em quase todas as versões do DOS e Windows, 
		ou através de DOSBox/DOSEMU, no Linux e FreeBSD.
		 No seu tempo, QBasic providenciava um IDE de topo, incluindo um depurador.
		 Tal como o QuickBASIC, QBasic é uma linguagem de programação estruturada, suportando subrotinas e ciclos while."],
	Scratch:
		["Scratch é uma plataforma de programação visual desenvolvida pelo MIT 
		(Instituto de Tecnologia de Massachusetts) que foi criada com o objetivo de tornar a programação acessível e 
		divertida para pessoas de todas as idades. Desde o seu lançamento em 2007, o Scratch tem sido amplamente utilizado
		 em escolas, clubes de ciência, bibliotecas e em casa para ensinar conceitos fundamentais de programação e promover 
		a criatividade digital. Isso se dá por conta de uma particularidade da plataforma, que é a sua 
		abordagem de programação visual. Em vez de escrever código em uma linguagem de programação tradicional,
		 os usuários criam programas arrastando e encaixando blocos de comandos em uma interface gráfica intuitiva.
		 Cada bloco representa uma ação específica, como mover um personagem, reproduzir um som ou alterar uma variável, 
		e eles se encaixam de forma lógica para criar sequências de ações."],
	TypeScript:
		["TypeScript é uma linguagem de programação de código aberto desenvolvida pela Microsoft. É um superconjunto 
		sintático estrito de JavaScript e adiciona tipagem estática opcional à linguagem. Tipos fornecem uma maneira de 
		descrever a forma de um objeto, fornecendo melhor documentação e permitindo que o TypeScript valide se seu código 
		está funcionando corretamente. Como TypeScript é um superconjunto de JavaScript, os programas JavaScript 
		existentes também são programas TypeScript válidos.
		\nFoi considerada pelo público a 4ª linguagem \"mais amada\", de acordo com 
		uma pesquisa conduzida pelo site Stack Overflow em 2018, e está entre as 15
		 linguagens mais populares, de acordo com uma pesquisa conduzida pela RedMonk."],
	Unicon:
		["Unicon é uma linguagem de programação interpretada de alto nível, que foi criada como dialeto de Icon, 
		para oferecer suporte a programação orientada a objetos, e inserir novas funções e capacidades a linguagem. 
		Seu nome é a abreviação de: “Unified Extended Dialect of Icon” (que significa: “Dialeto Estendido Unificado de Icon”).
		\nO Unicon é desenvolvido a partir do código fonte do Icon, que está em domínio público, tornando-o assim compatível 
		ou, ao menos muito semelhante, com o Icon. Seus desenvolvedores dizem que manter o Unicon compatível com o Icon não 
		é um de seus compromissos, porém dizem que o Unicon é, figurativamente, 99,9% compatível com o Icon."],
	VisualBasic:
		["O Visual Basic é uma linguagem de programação produzida pela empresa Microsoft, e é parte integrante do 
		pacote Microsoft Visual Studio. Sua versão mais recente faz parte do pacote Visual Studio .NET, voltada para 
		aplicações .Net. Sua versão anterior fez parte do Microsoft Visual Studio 6.0, ainda muito utilizado atualmente 
		por aplicações legadas.
		\nUm aperfeiçoamento do BASIC, a linguagem é dirigida por eventos (event driven), e possui também um ambiente de 
		desenvolvimento integrado (IDE — Integrated Development Environment) totalmente gráfico, facilitando enormemente 
		a construção da interface das aplicações (GUI — Graphical User Interface). O nome sabao, é Derivado de:
		\nBasic — a linguagem de Programação
		\nVisual — o Nome do Pacote EX: Visual studio (Visual C++, Visual C#, Visual Basic .NET)
		\nVisual Basic era muito usada em ambientes corporativos: uma pesquisa de 2005 indicou que
		 62% dos programadores usavam uma forma de Visual Basic, seguido de C++, JavaScript, C# e 
		Java. Atualmente foi suplantada pelo Java"],
	WebGL:
		["WebGL (Web Graphics Library) é uma
		 API em JavaScript, disponível a partir 
		do novo elemento canvas da HTML5, que oferece 
		suporte para renderização de gráficos 2D e gráficos 3D.
		 Pode ser implementado em uma aplicação web sem a necessidade de plug-ins no navegador.
		 A especificação foi lançada, sob versão 1.0, em 10 de fevereiro de 2011.
		 WebGL é administrado pelo Khronos Group."],
	Xojo:
		["TBD"],
	Yorick:
		["Yorick é uma linguagem de programação interpretada para simulações científicas e cálculos, (postprocessing) 
		e (steering) de grandes códigos de simulação, gráficos científicos interativos, leitura, escrita, e 
		tradução de grandes arquivos ou números."],
	Zig:
		["Zig é uma linguagem de programação de multiparadigma voltado para sistemas e compilável, embora 
		seja de propósito geral, estaticamente tipada, projetada por Andrew Kelley.
		 A linguagem é projetada para \"robustez, otimização e facilidade de manutenção\", suportando genéricos em 
		tempo de compilação e reflexão, compilação cruzada e gerenciamento manual de memória.
		 Um dos principais objetivos da linguagem é competir (e melhorar) a linguagem C,
		 ao mesmo tempo que se inspira em Rust, entre outros."],
	}
