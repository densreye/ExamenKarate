Feature: SignUP API

Feature: Validación de catálogo de productos

  Background:
    * url 'https://fakestoreapi.com/products'

  Scenario: Validar productos en la categoría "electronics"
    Given path '/category/(category).'  # Esto busca productos en la categoría "electronics"
    When method GET
    Then status 200

    # Validar que hay 6 productos en total
    And match response.length == 6

    # Validar que el producto con ID 11 está presente
    And match response contains { id: 11 }
