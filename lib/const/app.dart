class App {
  /// Таймаут запросов к АПИ, в миллисекундах.
  static const apiRequestTimeout = 30000;

  ///Базовый Url
  static String baseUrl = 'https://api2.megaohm.ru:44399/test';

  ///Тестовый id устройства
  static String testId = '12ABCDEF';

  ///Тестовый JWT
  static String testJWT =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtZWdhb2htLnJ1IiwiYXVkIjoiYXJjIiwic3ViIjoiYXQiLCJuYmYiOjE2ODMxOTkwMzcuMjI4ODM4NywiZXhwIjoxNzE0NzM1MDM3LjIyODg0Mjd9.Y3gl3QOdpiZ6PLvKGOwwJIxL9yMbMLXXzoK2dDJNgh8';
}
