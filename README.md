### Описание

Posty - это веб-приложение для создания и управления постами и комментариями. Приложение состоит из сервера, реализованного с использованием gRPC и HTTP/REST API, и фронтенда, построенного на React.

### Установка

1. Клонируйте репозиторий:

   ```bash
   git clone <repository-url>
   cd posty
   ```

2. Установите зависимости для сервера и фронтенда.

### Сервер

#### Запуск

1. Перейдите в директорию сервера:

   ```bash
   cd server
   ```

2. Установите зависимости:

   ```bash
   go mod tidy
   ```

3. Запустите сервер:

   ```bash
   go run main.go
   ```

Сервер будет запущен на `http://localhost:8086`.

#### API

Сервер предоставляет следующие эндпоинты:

- `POST /v1/posts` - Создание поста
- `GET /v1/posts/{id}` - Получение поста по ID
- `GET /v1/posts` - Получение всех постов
- `POST /v1/posts/{postId}/comments` - Комментирование поста
- `GET /v1/posts/{postId}/comments` - Получение всех комментариев поста

### Фронтенд

#### Запуск

1. Перейдите в директорию фронтенда:

   ```bash
   cd frontend
   ```

2. Установите зависимости:

   ```bash
   npm install
   ```

3. Запустите приложение:

   ```bash
   npm start
   ```

Приложение будет доступно по адресу `http://localhost:3000`.

#### Компоненты

- **PostList**: отображает список постов.
- **PostDetail**: отображает детали конкретного поста и его комментарии.
- **CreatePost**: форма для создания нового поста.
- **Header/Footer**: навигация и нижний колонтитул.
- **AuthCallback/LoginRedirect/RegisterRedirect**: обработка аутентификации.

### Использование

1. Перейдите на `http://localhost:3000`.
2. Зарегистрируйтесь или войдите в систему.
3. Создавайте посты и добавляйте комментарии.

### Авторизация

Фронтенд использует JWT токены для авторизации запросов к серверу. Токены сохраняются в `localStorage` и добавляются в заголовки каждого запроса.
