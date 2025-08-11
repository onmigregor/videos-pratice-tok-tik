# 🎥 Tok Tik - Aplicación de Videos Estilo TikTok

Una aplicación móvil desarrollada en Flutter que replica la funcionalidad básica de TikTok, permitiendo a los usuarios navegar y reproducir videos cortos con una interfaz intuitiva y moderna.

## 📋 Requisitos

### Requisitos del Sistema
- **Flutter SDK**: ^3.8.1 o superior
- **Dart**: Versión compatible con Flutter 3.8.1
- **Android**: API 21 (Android 5.0) o superior
- **iOS**: iOS 11.0 o superior
- **Windows**: Windows 10 o superior
- **macOS**: macOS 10.14 o superior
- **Linux**: Ubuntu 18.04 o superior

### Dependencias Principales
```yaml
dependencies:
  flutter: sdk: flutter
  provider: ^6.1.5          # Gestión de estado
  video_player: ^2.10.0     # Reproducción de videos
  animate_do: ^4.2.0        # Animaciones
  intl: ^0.20.2             # Formateo de números
  cupertino_icons: ^1.0.8   # Iconos de iOS
```

### Herramientas de Desarrollo
- **Flutter Lints**: ^5.0.0
- **Flutter Test**: SDK de Flutter

## 🏗️ Estructura del Proyecto

```
tok_tik/
├── 📱 android/                    # Configuración específica de Android
├── 🍎 ios/                       # Configuración específica de iOS
├── 🐧 linux/                     # Configuración específica de Linux
├── 🖥️ macos/                     # Configuración específica de macOS
├── 🪟 windows/                   # Configuración específica de Windows
├── 🌐 web/                       # Configuración para web
├── 📁 lib/                       # Código fuente principal
│   ├── 🎨 config/               # Configuraciones y temas
│   │   ├── app_theme.dart       # Tema principal de la aplicación
│   │   └── helpers/             # Utilidades y helpers
│   │       └── humman_formats.dart
│   ├── 🏗️ domain/               # Capa de dominio (entidades y reglas de negocio)
│   │   ├── datasources/         # Interfaces de fuentes de datos
│   │   ├── entities/            # Entidades del dominio
│   │   └── repositories/        # Interfaces de repositorios
│   ├── 🔧 infrastructure/       # Implementaciones concretas
│   │   ├── datasources/         # Implementaciones de fuentes de datos
│   │   ├── models/              # Modelos de datos
│   │   └── repositories/        # Implementaciones de repositorios
│   ├── 🎭 presentation/         # Capa de presentación (UI)
│   │   ├── providers/           # Providers de estado
│   │   ├── screens/             # Pantallas de la aplicación
│   │   └── widgets/             # Widgets reutilizables
│   │       ├── shared/          # Widgets compartidos
│   │       └── video/           # Widgets específicos de video
│   ├── 📊 shared/               # Datos y utilidades compartidas
│   └── 🚀 main.dart             # Punto de entrada de la aplicación
├── 📁 assets/                    # Recursos de la aplicación
│   └── videos/                  # Videos de ejemplo
├── 📄 pubspec.yaml              # Dependencias y configuración
└── 📖 README.md                 # Este archivo
```

## 🎯 Finalidad del Proyecto

### Objetivo Principal
Crear una aplicación móvil que replique la experiencia de usuario de TikTok, proporcionando una plataforma para la reproducción y navegación de videos cortos.

### Casos de Uso
1. **Reproducción de Videos**: Ver videos cortos con controles intuitivos
2. **Navegación Vertical**: Desplazarse entre videos de forma fluida
3. **Interacción Social**: Sistema de likes y contadores de vistas
4. **Experiencia Inmersiva**: Interfaz optimizada para consumo de contenido

### Público Objetivo
- Desarrolladores que quieran aprender Flutter
- Usuarios interesados en aplicaciones de video estilo TikTok
- Estudiantes de desarrollo móvil
- Entusiastas de la tecnología

## 📝 Resumen del Proyecto

### ¿Qué es Tok Tik?
Tok Tik es una **aplicación móvil multiplataforma** desarrollada en Flutter que simula la funcionalidad básica de TikTok. La aplicación permite a los usuarios navegar verticalmente entre videos cortos, reproducirlos con controles táctiles intuitivos y interactuar con el contenido mediante botones de like y contadores de vistas.

### Funcionalidades Implementadas

#### 🎥 **Reproductor de Video**
- Reproducción automática de videos
- Controles de play/pause con tap en pantalla
- Reproducción en bucle continuo
- Soporte para videos locales desde assets

#### 📱 **Navegación Intuitiva**
- Scroll vertical suave entre videos
- Carga progresiva de contenido
- Transiciones fluidas entre videos
- Interfaz optimizada para uso táctil

#### 🎨 **Interfaz de Usuario**
- Diseño moderno y minimalista
- Botones de interacción (like, vistas, reproducción)
- Captions superpuestas en los videos
- Efectos visuales y gradientes
- Animaciones suaves y atractivas

#### 🏗️ **Arquitectura Sólida**
- Implementación de Clean Architecture
- Separación clara de responsabilidades
- Gestión de estado con Provider
- Código modular y mantenible

### Tecnologías Utilizadas
- **Flutter**: Framework principal para desarrollo multiplataforma
- **Provider**: Gestión de estado de la aplicación
- **Video Player**: Reproducción de contenido multimedia
- **Animate Do**: Efectos de animación
- **Clean Architecture**: Patrón de arquitectura de software

### Estado del Proyecto
✅ **Completado**: Funcionalidad básica de reproducción de videos  
✅ **Completado**: Navegación vertical entre videos  
✅ **Completado**: Interfaz de usuario completa  
✅ **Completado**: Sistema de likes y contadores  
✅ **Completado**: Arquitectura limpia implementada  

### Próximos Pasos Sugeridos
- [ ] Implementar sistema de comentarios
- [ ] Agregar funcionalidad de compartir videos
- [ ] Integrar base de datos para persistencia
- [ ] Implementar sistema de usuarios
- [ ] Agregar funcionalidad de subir videos

---

## 🚀 Cómo Ejecutar el Proyecto

1. **Clonar el repositorio**
2. **Instalar dependencias**: `flutter pub get`
3. **Ejecutar la aplicación**: `flutter run`

## 📱 Plataformas Soportadas

- ✅ Android
- ✅ iOS  
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

---

**Desarrollado con ❤️ usando Flutter**
