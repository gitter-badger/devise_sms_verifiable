class DeviseSmsVerifiableError < RuntimeError;end
class ConfirmationMethodNotFound < DeviseSmsVerifiableError;end
class PhoneFieldNotFound < DeviseSmsVerifiableError;end
class PhoneFieldEmpty < DeviseSmsVerifiableError;end
class ValidSendSmsMethodNotFound < DeviseSmsVerifiableError;end

