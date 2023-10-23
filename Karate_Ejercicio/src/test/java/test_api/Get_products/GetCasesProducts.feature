Feature: GET API

  Background:
    * url 'https://fakestoreapi.com/products'

  Scenario: Validar producto especifico
    Given path '11'  # Esto es para obtener el producto con ID 11
    When method GET
    Then status 200
    And match response == { id: 11, title: 'Silicon Power 256GB SSD 3D NAND A55 SLC Cache Performance Boost SATA III 2.5*',category: 'electronics',rating: {rate: 4.8}}