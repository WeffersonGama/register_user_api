class User < ApplicationRecord
  has_secure_password

  VALID_EMAIL_FORMAT = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  validates :name,
            presence: { message: 'Preencha o campo do nome!' },
            length: { maximum: 50, message: 'Nome é muito grande!' }

  validates :password_digest,
            presence: { message: 'Preencha o campo da senha!' },
            length: { minimum: 6, message: 'Senha com menos de 6 dígitos!' }

  validates :email,
            presence: { message: 'Preencha o campo do e-mail!' },
            length: { maximum: 260, message: 'E-mail excede a capacidade permitida de caracteres!' },
            format: { with: VALID_EMAIL_FORMAT, message: 'Verifique se o e-mail estar correto!' },
            uniqueness: { case_sensitive: false, message: 'Já existe um usuário cadastrado com esse e-mail!' }

  before_save { self.email = email.downcase }
end
