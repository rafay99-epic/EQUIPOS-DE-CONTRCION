import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'adConfirm': 'Ad Confirm',
          'orderConfirmed':
              'Your order has been confirmed, we will send you confirmation email shortly.',
        },
        'es_ES': {
          'adConfirm': 'Confirmar anuncio',
          'orderConfirmed':
              'Su pedido ha sido confirmado, le enviaremos un correo electrónico de confirmación en breve.',
        },
        // ...other locales
      };
}
