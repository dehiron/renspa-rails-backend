if Rails.env === 'production'
    Rails.application.config.session_store :cookie_store, key: '_rails_backend', domain: 'フロントエンドのドメイン'
else
    Rails.application.config.session_store :cookie_store, key: '_rails_backend'
end