Ciurea Robert-Mihai 313CBb
                          Tema MN 2021
                    Interpolare aplicata pe imagini
                    
1. Interpolare nearest-neighbour:
  1.1 nn_2x2(f,STEP):
    -utilizam functia zeros pentru a initializa matricea rezultat cu 0-uri.
    -in interiorul for ului aproximam valoarea x_int(i) si y_int(j) astfel
    incat sa determinam coordonatele celui mai aporpiat punct de punctul
    -accesam matricea rezultatelor pentru a introduce valoarea aferenta din
    din matricea initiala
    
  1.2 nn_2x2_RGB(img,STEP):
    -accesam zonele din matricea initiala pentru a extrage matricile de culori
    -aplicam functia nn_2x2 pentru fiecare matrice de culori
    -concatenam matricile finale pentru a crea matricea de output
    
  1.3 nn_resize(I,p,q):
    -determinam factorii de scalare conform formulelor din PDF
    -initializam matricea de transformare si inversa acesteia
    -calculam x_p si y_p din spatiul imaginii initiale
    -incrementam x_p si y_p pentru a lucra in sistemul de coordonate m,n
    -determinam coordonatele celui mai apropiat punct
    -introducem in matricea rezultat la coordonatele aferente valoarea
    omolog din matricea initiala
    
  1.4 nn_resize_RGB(img,p,q):
    -aceasta functie este similar conceputa precum nn_resize_RGB, diferenta apare
    in stadiul in care se aplica in loc de functia nn_2x2, functia nn_resize
    pentru a face
    redimensionarea partitiilor diferentiate pe culori
    
2. Interpolarea bilinear:
  2.1 bilinear_coef(f,x1,y1,x2,y2):
    -calculam matricea A, vectorul b si calculam vectorul de coeficienti conform
    algoritmului


    din PDF-ul aferent temei
    
  2.2 bilinear_2x2(f,STEP):
    -determinam vectorul de coeficienti
    -initializam matricea rezultat
    -cream un vector cu linia aferenta pixelilor ce urmeaza sa fie convertiti
    pentru ca ulterior sa aiba loc conversia pixelilor si sa-i introducem in
    matricea finala
    
  2.3 bilinear_2x2_RGB(img,STEP):
    -functie asemanatoare cu nn_2x2 dar se aplica functia bilinear_2x2 pe
    matricile de culori pentru ca ulterior sa aiba loc concatenarea
    
  2.4 bilinear_resize(I,p,q):
    -determinam factorii de scalare
    -determinam matricea de transformare si inversa acesteia
    -determinam x_p si y_p din spatiul imaginii initiale si le incrementam
    pentru a lucra in sistemul de coordonate p q
    -determinam coordonatele punctelor care inconjoara punctul aferent
    -determinam vectorul de coeficienti
    -aplicam algoritmul din PDF-ul aferent temei pentru a introduce in matricea
    rezultatelor valoarea corespunzatoare
    
  2.5 bilinear_resize_RGB(img,p,q):
    -analog toate celelalte functii care implica extragerea matricilor pentru
    culori
    
  2.6 bilinear_rotate(I,rotation_angle):
    -determinam sin si cos pentru unghiul de rotatie
    -cream matricea de rotatie si inversa acesteia
    -determinam x_p si y_p din spatiul imaginii intiale si le aducem in sistemul
    de coordonate corespunzator
    -daca punctul iese din spatiul imaginii atunci introducem un pixel negru,
    altfel determinam punctele ce inconjoara pixelul initial
    -determinam coeficientii pentru a putea introduce in matricea rezultaelor
    valorile corespunzatoare
    
  2.7 bilinear_rotate_RGB(img,rotation_angle):
    -analog celelalte functii RGB, diferenta se face la modul de prelucrare
    a matricilor de culori
    
3. Interpolarea bicubic:
  3.1 bicubic_coef(f,Ix,Iy,Ixy,x1,y1,x2,y2):
    -calculam cele 3 matrici intermediare conform indicatiilor din PDF, le facem
    cast la double si apoi le inmultim pentru a determina coeficientii
    
  3.2 precalc_d(I):
    -determinam Ix,Iy si Ixy utilizand functiile aferente pentru determinarea
    valorilor corespunzatoare
    
  3.3 bicubic_resize(I,p,q):
    -functie asemanatoare cu bilinear_resize, diferenta apare din pricina
    algoritmului care necesita determinarea unor valori derivate si modalitatea
    de conversie a sistemului de coordonate
    -in plus, modul de determinarea a elementelor ce trebuie introduse in matricea
    finala are loc diferit, fiind necesara o matrice in plus pentru a putea
    avea loc calculul corespunzator
    
  3.4 bicubic_resize_RGB(img,p,q):
    -analog toate celelalte functii din spate
