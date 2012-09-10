# encoding: utf-8
class StaticController < ApplicationController
  caches_page :elsur, :remix

  CHAPTER = {
      names: ['0. Prefacio: Itinerario del empoderamiento posible ',
              '1. Arquetipo de una plaga', '2. Puentes que amanecen mientras dormimos',
              '3. El Dentista zurdo', '4. La sombra de Aniko', '5. ¿Por qué no hablamos todos de Marion?',
              '6. La vida africana', '7. La vida londinense', '8. Mediana', '9. San Juan',
              '10. Primaveras exquisitas', '11. Mano de santo', '12. Ahora', 'Postfacio: Bienvenidos al sudoeste'],
      files: ['ElSur-00_PREFACIO_ITINERARIO DEL EMPODERAMIENTO POSIBLE',
              'ElSur-01_ARQUETIPO DE UNA PLAGA', 'ElSur-02_PUENTES QUE AMANECEN MIENTRAS DORMIMOS',
              'ElSur-03_EL DENTISTA ZURDO', 'ElSur-04_LA SOMBRA DE ANIKO',
              'ElSur-05_¿POR QUÉ NO HABLAMOS TODOS DE MARION?', 'ElSur-06_LA VIDA AFRICANA',
              'ElSur-07_LA VIDA LONDINENSE', 'ElSur-08_MEDIANA', 'ElSur-09_SAN JUAN',
              'ElSur-10_PRIMAVERAS EXQUISITAS', 'ElSur-11_MANO DE SANTO', 'ElSur-12_AHORA',
              'ElSur-13_POSTFACIO_BIENVENIDOS AL SUDOESTE']
  }

  def elsur
    @chapters = Hash[*CHAPTER[:names].zip(CHAPTER[:files]).flatten]
  end

  def remix
    @remixes = []
    add_remix('108211', 'María Toraño', '108211.maria_t.pdf')
    add_remix('La sombra de Raquel/Aniko', 'Chainsaw Gore', 'aniko.chainsaw_gore.pdf')
    add_remix('Remezcla del Sur - Meditaciones Metafísicas', 'Antonia Llera', 'antonia.llera.version.pdf')
    add_remix('Arenas', 'Mercedes Figueroa', 'Arenas.mercedes.figueroa.pdf')
    add_remix('Beso sin brújula', 'Erica', 'Besosinbrujula.erica.pdf')
    add_remix('Como pasé de ser una perra figurante a una verdadera bookcamper', 'Soraya González', 'como.pase.de.perra.figurante.soraya.glez.pdf')
    add_remix('El noroeste', 'Elena Cabrera', 'Elnoroeste.elena.cabrera.pdf')
    add_remix('La vida en Alaska', 'Camila Monasterio', 'lavidaenalaska.camila.monasterio.pdf')
    add_remix('Vida Londinense', 'Bertha Restrepo', 'LaVidaLondinense.bertha.restrepo.pdf')
    add_remix('Me gusta', 'Blup', 'megusta.re.sur.es.blup.pdf')
    add_remix('Mujeres y hombres de antes y ahora', 'Gema', 'MUJERESYHOMBRESDEANTESYAHORA.Gema.pdf')
    add_remix('Patrimonio de mocitas / La sombra de Aniko', 'Amparo R. Peno', 'Patrimonio.de.mocitas.Amparo.R.Peno.pdf')
    add_remix('Poema a El Sur', 'Soledad Hernández de La Rosa', 'POEMA.ELSUR.sole.hdez.rosa.pdf')
    add_remix('Puentes que recuerdan dónde vivimos', 'María Glez Olmo', 'Puentes.vivimos.glez.olmo.pdf')
    add_remix('Puentes que amanecen mientras (no) dormimos', '@iguazelelhombre', 'Puentesqueamanecen.iguazel.pdf')
    add_remix('Remezcla del relatio "Mediana"', 'Rocío Trejo', 'Remezcla_Ro_Trejo_Mediana_ElSur.pdf')
    add_remix('Remezcla Felipa', 'Felipa', 'Remezcla_Felipa.pdf')
    add_remix('El Sur', 'Gloria Santana', 'Sur.version.gloria.santana.pdf')
    add_remix('Un río. Un puente.', 'Fernanda Mangoderosa', 'un.rio.un.puente.fernanda.mangoderosa.pdf')
    add_remix('Una ciudad luminosa', 'Blanca', 'Unaciudadluminosa.BL.pdf')
    add_remix('Un relato', 'Albertine', 'unrelato.albertine.pdf')
    add_remix('Wild Word', 'La Señora Dubois', 'WILDWORLD.dubois.pdf')
    add_remix('Y si una no lo hace...', 'Anónima', 'Ysi.anonim.pdf')
    add_remix('London life', 'Tom Daddesio', 'London Life_silvia_nanclares.pdf')
    add_remix('Valverde era un norte, el mito del sur es rotativo', 'María Castelló', 'ElSur-MariaCastello.jpg')
    add_remix('El dentista zurdo', 'Jordi Sobrerroca', 'El-dentista-zurdo.Jordi-Sobrerroca.pdf')
  end

  protected
  def add_remix(title, author, pdf)
    @remixes << {title: title, author: author, file: pdf}
  end
end

