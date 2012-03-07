# encoding: utf-8
class StaticController < ApplicationController
  caches_page :elsur

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

  end
end

