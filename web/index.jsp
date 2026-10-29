<%-- 
    Document   : index.jsp
    Created on : 28/04/2024, 10:57:04 p. m.
    Author     : jeale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Principal</title>
    </head>
    <body style="background-color:#000000; width: 100%; overflow-x: hidden; height: 100%;">
        <nav class="navbar navbar-expand-lg" style="background-color:#000000" >
            <div class="collapse navbar-collapse" id="navbarNav" style="font-family: Tahoma;">
                <ul class="navbar-nav">
                    <li class="nav-item"style="margin-left: 50px">
                        <a class="nav-link"style="color:#a0e9f3;font-size: 30px; padding:none; font-weight: bold;">Java</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"style="color:#FDFEFE;padding: 22px;">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" style="color:#FDFEFE;padding: 22px;" href="#info">Información</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" style="color:#FDFEFE;padding: 22px;" href="#enlace">Enlaces</a>
                    </li>
                </ul>
            </div>
            <form action="Login.jsp" method="post">
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item" style="margin-left: 610px">
                            <input type="submit" name="accion" value="Iniciar Sesion" class="btn btn-dark" style="background-color: #3b7fa8; margin: 10px;">
                        </li>
                    </ul>
            </div>
            </form>
            <form action="Registro.jsp" method="post">
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item" >
                            <input type="submit" name="accion" value="Registrarse" class="btn btn-dark" style="background-color: #3b7fa8; margin: 10px;"">
                        </li>
                    </ul>
            </div>

        </nav>
        <div class="container mt-4 col-lg-6" style="position: relative; top: 60px; right: 280px;">
            <div class="form-group text-left" style="width: 100%; font-family: Tahoma">
                <p style="font-size: 80px; color:#3b7fa8; margin: 10px; line-height: 110%;font-weight: bold;">TUTORIAL EDUCATIVO</p>
                <p style="font-size: 80px; color:#FDFEFE; margin: 10px; line-height: 110%;font-weight: bold;">JAVA</p>
                <p style="font-family: Segoe Script;font-size: 17px; color:#FDFEFE; margin: 20px">Bienvenido al Sistema</p>
                <p style="font-family: Segoe Script;font-size: 17px; color:#FDFEFE; margin: 20px">Java</p>
            </div>  
        </div>
        <img src="img/java2.jpg" height="550" width="700" style="position: relative;top: -430px; left: 620px;">
        <%--background-image: url('img/fondo9.jpg');background-repeat: no-repeat;background-size: 100%;--%>
        <section style="position: relative; top: -300px;color:#FDFEFE;font-family: Tahoma;">
            <a name="info" style="font-weight: bold; font-size: 40px;position: relative; top: 50px;left: 110px;">Información del proyecto</a>
            <article>
                <a style="font-family: Segoe Script;font-weight: bold; font-size: 30px; color: #a0e9f3;position: relative; top: 80px; left: 220px;">Descripción</a>
                <div style="padding: 25px;width:50vw;height:25vh;position: relative; top: 70px; left: 90px;">
                    <p>El proyecto consiste en un tutorial educativo en el cual se manejan diferentes temáticas y conceptos básicos e introductorios para el manejo del lenguaje de programación Java,
                    está dirigido principalmente a los estudiantes de primer y segundo semestre de la tecnología en sistematización de datos de la Universidad Distrital Francisco José de Caldas.
                    Cuenta con diferentes secciones que contienen explicaciones claras, ejemplos y actividades interactivas para facilitar el aprendizaje de manera dinámica y atractiva.
                    </p>
                </div>
                <img src="img/tec1.jpg" height="300" width="450" style="position: relative;top: -200px; left: 870px;">
            </article>
            <article>
                <center><a style="font-family: Segoe Script;font-weight: bold; font-size: 30px;color: #a0e9f3;position: relative; top: -195px;">Objetivos</a></center>
                <div>
                    <div style="padding: 25px;border-radius: 10px;background-color:#2A2A2A;position: relative; top: -164px; left: 1050px;height:40vh;width:20vw;">
                        <img src="img/logo1.png" height="80" width="80"><br>
                        <br><p style="font-weight: bold">Transmitir</p>
                        <p>ideas e instrucciones claras para el correcto aprendizaje por parte de los usuarios que hagan uso de esta herramienta.</p>
                    </div>
                    <div style="padding: 25px;border-radius: 10px;background-color:#2A2A2A;position: relative; top: -456px; left: 725px;height:40vh;width:20vw;">
                        <img src="img/logo2.png" height="80" width="110"><br>
                        <br><p style="font-weight: bold">Crear</p>
                        <p>ejemplos que complementen, refuercen y den una mayor claridad a los conceptos manejados en el tutorial.</p>
                    </div>
                    <div style="padding: 25px;border-radius: 10px;background-color:#2A2A2A;position: relative; top: -748px; left: 80px;height:40vh;width:20vw;">
                        <img src="img/logo3.png" height="80" width="80"><br>
                        <br><p style="font-weight: bold">Proporcionar</p>
                        <p>una retroalimentación continua para la mejora del aprendizaje y la corrección de los errores que tengan los estudiantes.</p>
                    </div>
                    <div style="padding: 25px;border-radius: 10px;background-color:#2A2A2A;position: relative; top: -1041px; left: 405px;height:40vh;width:20vw;">
                        <img src="img/logo4.png" height="80" width="110"><br>
                        <br><p style="font-weight: bold">Integrar</p>
                        <p>elementos de gamificación para motivar a los estudiantes a través de un aprendizaje más dinámico e interactivo</p>
                    </div>
                </div> 
            </article>
        </section>
        <section style="position: relative; top: -300px;color:#FDFEFE;font-family: Tahoma;">
            <article>
                <a style="font-family: Segoe Script;font-weight: bold; font-size: 30px;color: #a0e9f3;position: relative; top: -1000px;left: 90px">Integrantes</a>
                <div style="padding: 20px;border-radius: 10px; border-width: 2px;border-style: solid;border-color: #3b7fa8;position: relative; top: -970px; left: 100px;height:9vh;width:22vw;">
                    <p>Jennifer Alejandra Morales Vanegas</p>
                </div>
                <div style="padding: 20px;border-radius: 10px; border-width: 2px;border-style: solid;border-color: #3b7fa8;position: relative; top: -960px; left: 100px;height:9vh;width:22vw;">
                    <p>Sara Viviana Herrera Bejarano</p>
                </div>
            </article>
            <article>
                <a style="font-family: Segoe Script;font-weight: bold; font-size: 30px;color: #a0e9f3;position: relative; top: -920px;left: 90px">Tutor</a>
                <div style="padding: 20px;border-radius: 10px; background-color:#2A2A2A;position: relative; top: -885px; left: 100px;height:9vh;width:22vw;">
                    <p>Juan Carlos Guevara Bolaños</p>
                </div>
            </article>
            <article>
                <a style="font-family: Segoe Script;font-weight: bold; font-size: 30px;color: #a0e9f3;position: relative; top: -1290px;left: 500px">Seguimiento</a>
                <div style="font-size: 20px;padding: 30px;border-radius: 10px; background-color:#2A2A2A;position: relative; top: -1259px; left: 500px;height:45vh;width:35.5vw;">
                    <p>Portal Web . . . . . . . . . . . . . . . . . . . . . . . .</p><p style="font-size: 30px;color: #568bc3;position: relative; top: -58px; left: 390px">%</p><p style="font-size: 30px;position: relative; top: -119px; left: 420px">80</p>
                    <p style="position: relative; top: -125px;">Información . . . . . . . . . . . . . . . . . . . . . . .</p><p style="font-size: 30px;color: #568bc3;position: relative; top: -182px; left: 390px">%</p><p style="font-size: 30px;position: relative; top: -243px; left: 420px">90</p>
                    <p style="position: relative; top: -250px;">Enlaces . . . . . . . . . . . . . . . . . . . . . . . . . . </p><p style="font-size: 30px;color: #568bc3;position: relative; top: -307px; left: 390px">%</p><p style="font-size: 30px;position: relative; top: -367px; left: 420px">80</p>
                    <p style="position: relative; top: -374px;">Registro . . . . . . . . . . . . . . . . . . . . . . . . . .</p><p style="font-size: 30px;color: #568bc3;position: relative; top: -430px; left: 390px">%</p><p style="font-size: 30px;position: relative; top: -491px; left: 420px">30</p>
                    <p style="position: relative; top: -497px;">Validación . . . . . . . . . . . . . . . . . . . . . . . . </p><p style="font-size: 30px;color: #568bc3;position: relative; top: -554px; left: 390px">%</p><p style="font-size: 30px;position: relative; top: -615px; left: 420px">00</p>
                    <p style="position: relative; top: -605px;">Propuesta. . . . . . . . . . . . . . . . . . . . . . . . . </p><p style="font-size: 30px;color: #568bc3;position: relative; top: -663px; left: 390px">%</p><p style="font-size: 30px;position: relative; top: -723px; left: 420px">00</p>
                </div>
            </article>
        </section>
        <section style="position: relative; top: -1400px; left: 0px;color:#FDFEFE;font-family: Tahoma;">
            <a name="enlace" style=";font-weight: bold; font-size: 40px;position: relative; left: 110px;">Enlaces</a>
            <article>
                <div style="padding: 25px;border-radius: 10px;background-color:#2A2A2A;position: relative; top: 30px; left: 100px;height:48vh;width:40vw;">
                    <img src="img/Libro.png" height="300" width="220"><br>
                    <br><p style="font-family: Segoe Script;font-weight: bold; color: #a0e9f3; font-size: 25px;position: relative; top: -330px; left:290px">Enlace</p>
                    <a href="https://www.uv.mx/personal/pmartinez/files/2021/03/fundamentosdelaprogramacionenjava_completo2021.pdf"><button type="button" class="btn btn-dark" style="background-color: #4E4E4E; margin: 5px;position: relative; top: -340px; left:280px">Ir al sitio</button></a>
                    <p style="font-family: Segoe Script;font-weight: bold; color: #a0e9f3; font-size: 25px;position: relative; top: -330px; left:290px">Para que sirvió</p>
                    <p style="position: relative; font-size: 14px;top: -330px; left:280px">Fue útil para implementar los
                       <br>fundamentos de programación en
                       <br>Java en los tutoriales, abarcando
                       <br>aspectos esenciales como la lógica
                       <br>de programación, la estructura de
                       <br>datos, los conceptos de algoritmos,
                       <br>entre otros.</p>
                </div>
            </article>
            <article>
                <div style="padding: 25px;border-radius: 10px;background-color:#2A2A2A;position: relative; top: -321px; left: 725px;height:48vh;width:40vw;">
                    <img src="img/Libro2.png" height="300" width="220"><br>
                    <br><p style="font-family: Segoe Script;font-weight: bold; color: #a0e9f3; font-size: 25px;position: relative; top: -330px; left:290px">Enlace</p>
                    <a href="https://www.researchgate.net/publication/339273992_Introduccion_al_Pensamiento_Computa"><button type="button" class="btn btn-dark" style="background-color: #4E4E4E; margin: 5px;position: relative; top: -340px; left:280px">Ir al sitio</button></a>
                    <p style="font-family: Segoe Script;font-weight: bold; color: #a0e9f3; font-size: 25px;position: relative; top: -330px; left:290px">Para que sirvió</p>
                    <p style="position: relative; font-size: 14px;top: -330px; left:280px">Fue de ayuda para lograr 
                       <br>implementar en los tutoriales 
                       <br>elementos que desarrollen el
                       <br>pensamiento computacional de los
                       <br>estudiantes, ya que esto les ayuda
                       <br>a comprender mejor los algoritmos
                       <br>y las estructuras de datos</p>
                </div>
            </article>
            <article>
                <div style="padding: 25px;border-radius: 10px;background-color:#2A2A2A;position: relative; top: -280px; left: 725px;height:48vh;width:40vw;">
                    <img src="img/Libro3.jpeg" height="300" width="220"><br>
                    <br><p style="font-family: Segoe Script;font-weight: bold; color: #a0e9f3; font-size: 25px;position: relative; top: -330px; left:290px">Enlace</p>
                    <a href="https://narceaediciones.es/es/educacion-hoy-estudios/1168-modelos-didacticos-para-situaciones-y-contextos-de-aprendizaje-9788427723511.html"><button type="button" class="btn btn-dark" style="background-color: #4E4E4E; margin: 5px;position: relative; top: -340px; left:280px">Ir al sitio</button></a>
                    <p style="font-family: Segoe Script;font-weight: bold; color: #a0e9f3; font-size: 25px;position: relative; top: -330px; left:290px">Para que sirvió</p>
                    <p style="position: relative; font-size: 14px;top: -330px; left:280px">En este libro encontramos el modelo
                       <br>didáctico mas adecuado, mediante
                       <br>este modelo logramos estructurar
                       <br>los tutoriales y los ejercicios
                       <br>prácticos de codificación de manera
                       <br>que fomentaran la participacion
                       <br>activa de los estudiantes.</p>
                </div>
            </article>
            <article>
                <div style="padding: 25px;border-radius: 10px;background-color:#2A2A2A;position: relative; top: -630px; left: 100px;height:48vh;width:40vw;">
                    <img src="img/Libro4.jpeg" height="300" width="220"><br>
                    <br><p style="font-family: Segoe Script;font-weight: bold; color: #a0e9f3; font-size: 25px;position: relative; top: -330px; left:290px">Enlace</p>
                    <a href="https://www.academia.edu/10371689/Java_a_fondo_2da_Edicion"><button type="button" class="btn btn-dark" style="background-color: #4E4E4E; margin: 5px;position: relative; top: -340px; left:280px">Ir al sitio</button></a>
                    <p style="font-family: Segoe Script;font-weight: bold; color: #a0e9f3; font-size: 25px;position: relative; top: -330px; left:290px">Para que sirvió</p>
                    <p style="position: relative; font-size: 14px;top: -330px; left:280px">Contribuyó significativamente
                       <br>para reforzar y comprender a
                       <br>profundidad los conceptos 
                       <br>fundamentales de Java, facilitando
                       <br>de esta manera su explicación 
                       <br>de una manera mas eficaz
                       <br>en los tutoriales.</p>
                </div>
            </article>
            <article>
                <div style="padding: 25px;border-radius: 10px;background-color:#2A2A2A;position: relative; top: -587px; left: 725px;height:48vh;width:40vw;">
                    <img src="img/Libro5.jpg" height="300" width="220"><br>
                    <br><p style="font-family: Segoe Script;font-weight: bold; color: #a0e9f3; font-size: 25px;position: relative; top: -330px; left:290px">Enlace</p>
                    <a href="https://books.google.es/books?hl=es&lr=&id=XWABEAAAQBAJ&oi=fnd&pg=PT11&dq=Propuestas+did%C3%A1cticas+para+el+aprendizaje+en+tecnolog%C3%ADa+e+inform%C3%A1tica&ots=WdbabzGqMR&sig=Of68e6Mie-p4t8Tw14fJp8ZfiCg#v=onepage&q=Propuestas%20did%C3%A1cticas%20para%20el%20aprendizaje%20en%20tecnolog%C3%ADa%20e%20inform%C3%A1tica&f=false"><button type="button" class="btn btn-dark" style="background-color: #4E4E4E; margin: 5px;position: relative; top: -340px; left:280px">Ir al sitio</button></a>
                    <p style="font-family: Segoe Script;font-weight: bold; color: #a0e9f3; font-size: 25px;position: relative; top: -330px; left:290px">Para que sirvió</p>
                    <p style="position: relative; font-size: 14px;top: -330px; left:280px">Este libro nos proporcionó
                       <br>una amplia variedad de estrategias
                       <br>pedagógicas útiles, las cuales 
                       <br>adaptamos y aplicamos en el diseño 
                       <br>de los tutoriales y de los ejercicios
                       <br>que se encuentran en el proyecto.</p>
                </div>
            </article>
            <article>
                <div style="padding: 25px;border-radius: 10px;background-color:#2A2A2A;position: relative; top: -937px; left: 100px;height:48vh;width:40vw;">
                    <img src="img/Libro6.jpg" height="300" width="220"><br>
                    <br><p style="font-family: Segoe Script;font-weight: bold; color: #a0e9f3; font-size: 25px;position: relative; top: -330px; left:290px">Enlace</p>
                    <a href="https://www.researchgate.net/publication/325359849_El_pensamiento_computacional_analisis_de_una_competencia_clave"><button type="button" class="btn btn-dark" style="background-color: #4E4E4E; margin: 5px;position: relative; top: -340px; left:280px">Ir al sitio</button></a>
                    <p style="font-family: Segoe Script;font-weight: bold; color: #a0e9f3; font-size: 25px;position: relative; top: -330px; left:290px">Para que sirvió</p>
                    <p style="position: relative; font-size: 14px;top: -330px; left:280px">Lo usamos para implementar en los
                       <br>tutoriales una estructura que le ayude
                       <br>a los estudiantes a abordar problemas
                       <br>y desarrollar algoritmos en java de
                       <br>una manera rápida y clara, de una
                       <br>manera que ellos logren comprender
                       <br> fácilmente.</p>
                </div>
            </article>
        </section>
    </body>
</html>
