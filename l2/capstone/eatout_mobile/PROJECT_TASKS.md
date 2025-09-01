# EatOut Mobile App - Development Tasks

This document outlines the complete development roadmap for the EatOut Flutter mobile application based on the project requirements and cursor rules.

## Project Overview
EatOut is a Flutter mobile application with a clean 3-tab navigation structure that allows users to browse restaurant menus, search for dining spots, and discover new restaurants. Restaurant owners can create and manage their digital menus in real time.

**App Navigation Structure:**
- **Home**: Restaurant browsing, favorites, recent activity, and menu viewing
- **Discover**: Restaurant search, discovery features, and location-based exploration  
- **Settings**: User profile, subscription management, Pro features, and app settings

**Technology Stack:**
- Framework: Flutter
- Backend: Firebase (Authentication + Firestore)
- State Management: BLoC pattern
- Authentication: Firebase Auth with email verification, Google Sign In, Apple Sign In
- Purchase Management: RevenueCat for Pro subscriptions

---

## Development Tasks

### 🏗️ Project Foundation

#### Task 1: Project Structure Setup
- [x] Set up Flutter project structure with proper folder organization
- [x] Create `/lib/features/` for feature-based organization (Home, Discover, Settings, Auth)
- [x] Create `/lib/core/` for shared utilities and services
- [x] Create `/lib/models/` for data models
- [x] Create `/lib/services/` for Firebase and API services

**Note:** Ensure the project follows Flutter best practices and Material Design guidelines throughout development.

#### Task 2: Dependencies Configuration
- [x] Add Firebase packages (firebase_core, firebase_auth, cloud_firestore)
- [x] Add BLoC packages (flutter_bloc, bloc)
- [x] Add RevenueCat package (purchases_flutter)
- [x] Add Google Sign In package (google_sign_in)
- [x] Add Apple Sign In package (sign_in_with_apple)
- [x] Add upgrader package for version management and forced upgrades
- [x] Configure pubspec.yaml with all necessary dependencies

#### Task 3: Firebase Setup
- [x] Create and configure a Firebase project with Authentication and Firestore enabled
- [ ] Add `google-services.json` (Android) and `GoogleService-Info.plist` (iOS) configuration files to the Flutter project
- [ ] Set up the Firebase console project with appropriate app registrations for both iOS and Android
- [ ] Enable and configure authentication providers in Firebase: Email (with 6-digit code), Google, and Apple
- [ ] Initialize Firebase in the Flutter app using `firebase_core` before any Firebase service is used

### 📊 Data Layer

#### Task 4: Data Models
- [ ] Create User profile model (including subscription status)
- [ ] Create Restaurant information model
- [ ] Create Menu items and categories models
- [ ] Create Favorites and user preferences models
- [ ] Create Subscription/Pro status information models
- [ ] Implement proper JSON serialization/deserialization

### 🔐 Authentication System

#### Task 5: Authentication BLoC
- [ ] Implement Authentication BLoC with multiple sign-in options
- [ ] Handle authentication state management
- [ ] Implement proper error handling and validation
- [ ] Create authentication events and states
- [ ] Handle authentication persistence

#### Task 6: Email Verification System
- [ ] Implement email authentication with 6-digit verification code
- [ ] Send verification codes to user's email
- [ ] Handle code verification and validation
- [ ] Implement resend verification code functionality
- [ ] Handle email verification timeout and errors

#### Task 7: Social Authentication
- [ ] Integrate Google Sign In authentication flow
- [ ] Integrate Apple Sign In authentication flow (required for iOS App Store)
- [ ] Handle social authentication errors and edge cases
- [ ] Implement proper user profile creation from social accounts

#### Task 8: Firestore Service
- [ ] Create Firestore service for real-time data synchronization
- [ ] Implement offline capabilities where appropriate
- [ ] Handle CRUD operations for restaurants, menus, users
- [ ] Implement proper error handling for network operations
- [ ] Use async/await patterns for Firebase operations

### 💳 Subscription Management

#### Task 9: RevenueCat Setup
- [ ] Configure RevenueCat for Pro subscription management
- [ ] Set up in-app purchases with purchases_flutter package
- [ ] Configure RevenueCat dashboard with subscription products
- [ ] Handle subscription status validation
- [ ] Implement subscription restoration and cancellation flows
 
#### Task 10: Subscription BLoC
- [ ] Implement subscription management BLoC
- [ ] Handle Pro feature access control based on subscription status
- [ ] Manage subscription state throughout the app
- [ ] Handle subscription purchase flow
- [ ] Implement subscription status checking

### 🍽️ Core Features - 3-Tab Navigation

#### 🏠 Home Tab Features

##### Task 11: Restaurant Browsing & Listing
- [ ] Create restaurant browsing functionality on Home tab
- [ ] Build restaurant listing screens with cards/tiles layout
- [ ] Implement recent restaurants and popular picks sections
- [ ] Handle restaurant data fetching and display
- [ ] Create smooth scrolling and pagination

##### Task 12: Menu Viewing System
- [ ] Implement menu viewing screens accessible from Home
- [ ] Create restaurant details screens
- [ ] Display menu items and categories with attractive UI
- [ ] Show restaurant information, photos, and locations
- [ ] Handle menu data fetching and caching

##### Task 13: Favorites System (User Login Required)
- [ ] Build favorites system integrated in Home tab
- [ ] Allow users to save/unsave favorite restaurants
- [ ] Create favorites section in Home tab
- [ ] Handle favorites synchronization with Firebase
- [ ] Show favorites alongside browsing content

#### 🔍 Discover Tab Features

##### Task 14: Search & Discovery
- [ ] Implement powerful search functionality in Discover tab
- [ ] Add search and filter capabilities (cuisine, price, location)
- [ ] Create search results screens with sorting options
- [ ] Implement location-based restaurant discovery
- [ ] Add "Explore nearby" and "Trending" sections

##### Task 15: Advanced Discovery Features
- [ ] Implement map view for restaurant locations
- [ ] Create category-based browsing (Italian, Mexican, etc.)
- [ ] Add "New restaurants" and "Popular this week" sections
- [ ] Implement recommendation system based on user preferences
- [ ] Handle geolocation and proximity-based suggestions

#### ⚙️ Settings Tab Features

##### Task 16: User Profile & Authentication
- [ ] Create user profile management screens in Settings
- [ ] Handle user profile editing and photo management
- [ ] Display subscription status and account information
- [ ] Implement account settings and preferences
- [ ] Handle authentication flows (login/register/logout)

##### Task 17: Subscription Management
- [ ] Display current subscription status in Settings
- [ ] Handle Pro subscription upgrade/management
- [ ] Show Pro features overview and benefits
- [ ] Implement subscription cancellation and restoration
- [ ] Create billing and payment history screens

##### Task 18: Pro Features - Menu Creation (Pro Subscription Required)
- [ ] Add "My Restaurant" section in Settings for Pro users
- [ ] Implement menu creation features for Pro subscribers
- [ ] Create menu editor interface accessible from Settings
- [ ] Handle menu item creation and editing
- [ ] Implement menu categories management
- [ ] Add photo upload for menu items

##### Task 19: Pro Features - Menu Management (Pro Subscription Required)
- [ ] Build menu item management system in Settings
- [ ] Implement pricing management for menu items
- [ ] Create availability toggle functionality
- [ ] Handle menu item categories organization
- [ ] Real-time menu updates and publishing

##### Task 20: Pro Features - Restaurant Management (Pro Subscription Required)
- [ ] Create restaurant profile management for Pro subscribers
- [ ] Handle restaurant information editing in Settings
- [ ] Implement restaurant photo and gallery management
- [ ] Manage restaurant location, contact info, and hours
- [ ] Handle restaurant verification and publishing status

### 🎨 UI/UX & Navigation

#### Task 21: Routing and Navigation
- [ ] Implement secure routing based on authentication status
- [ ] Create navigation based on subscription status
- [ ] Handle deep linking and route guards
- [ ] Implement proper navigation flow
- [ ] Create splash screen and onboarding

#### Task 22: UI Theme and Design
- [ ] Create consistent Material Design theme
- [ ] Implement color schemes and typography
- [ ] Build responsive UI components for various screen sizes
- [ ] Create reusable UI widgets
- [ ] Ensure consistent design across all screens

#### Task 23: Loading and Error States
- [ ] Implement loading states throughout the app
- [ ] Create comprehensive error handling
- [ ] Handle offline capabilities and network errors
- [ ] Implement retry mechanisms for failed operations
- [ ] Show appropriate user feedback for all actions

#### Task 24: Accessibility
- [ ] Ensure accessibility compliance
- [ ] Implement proper widget semantics
- [ ] Add screen reader support
- [ ] Handle keyboard navigation
- [ ] Test accessibility features

### 🔒 Security & Performance

#### Task 25: Firebase Security Rules
- [ ] Configure Firebase security rules for proper data access control
- [ ] Implement user-based data access restrictions
- [ ] Secure Pro subscriber data access
- [ ] Handle authentication-based security rules
- [ ] Test security rule configurations

### 🧪 Testing

#### Task 26: Testing Setup
- [ ] Set up testing framework
- [ ] Write unit tests for business logic
- [ ] Test Firebase integration thoroughly
- [ ] Create test mocks and fixtures
- [ ] Set up continuous integration testing

#### Task 27: Widget and Integration Tests
- [ ] Implement widget tests for UI components
- [ ] Create integration tests for user flows
- [ ] Test authentication flows
- [ ] Test subscription management
- [ ] Handle edge cases and error scenarios

---

## Feature Access Matrix - By Tab

### 🏠 Home Tab
| Feature | Public Users | Logged-in Users | Pro Subscribers |
|---------|-------------|-----------------|-----------------|
| Browse restaurants | ✅ | ✅ | ✅ |
| View menus | ✅ | ✅ | ✅ |
| Save favorites | ❌ | ✅ | ✅ |
| View favorites | ❌ | ✅ | ✅ |

### 🔍 Discover Tab
| Feature | Public Users | Logged-in Users | Pro Subscribers |
|---------|-------------|-----------------|-----------------|
| Search restaurants | ✅ | ✅ | ✅ |
| Filter & sort | ✅ | ✅ | ✅ |
| Location-based discovery | ✅ | ✅ | ✅ |
| Map view | ✅ | ✅ | ✅ |

### ⚙️ Settings Tab
| Feature | Public Users | Logged-in Users | Pro Subscribers |
|---------|-------------|-----------------|-----------------|
| User profile | ❌ | ✅ | ✅ |
| Account settings | ❌ | ✅ | ✅ |
| Subscription management | ❌ | ✅ | ✅ |
| Create menus | ❌ | ❌ | ✅ |
| Edit menus | ❌ | ❌ | ✅ |
| Manage restaurant | ❌ | ❌ | ✅ |
| Set prices | ❌ | ❌ | ✅ |
| Toggle availability | ❌ | ❌ | ✅ |

---

## Development Guidelines

### Code Quality Standards
- Write clean, documented code with meaningful variable names
- Implement proper error handling and validation
- Use async/await patterns for Firebase operations
- Follow Dart and Flutter linting rules
- Prioritize performance and efficient widget rebuilding

### Architecture Principles
- Follow BLoC pattern consistently for state management
- Implement clear separation of concerns
- Use dependency injection for services
- Handle state management efficiently
- Implement proper loading and error states

### Authentication Flow Requirements
- Support email with 6-digit verification
- Integrate Google Sign In
- Integrate Apple Sign In (iOS requirement)
- Handle authentication persistence
- Secure routes based on user status

### Subscription Management
- Use RevenueCat for all subscription handling
- Validate subscription status server-side
- Handle subscription restoration
- Implement proper access control
- Manage subscription lifecycle events

---

## Success Criteria
- [ ] All public features work without authentication
- [ ] Email verification system works reliably
- [ ] Social authentication (Google/Apple) functions properly
- [ ] Pro subscription features are properly gated
- [ ] Real-time menu updates work seamlessly
- [ ] App handles offline scenarios gracefully
- [ ] UI is responsive across different screen sizes
- [ ] App meets accessibility standards
- [ ] Security rules prevent unauthorized access
- [ ] All tests pass and coverage is adequate

---

*This document should be updated as tasks are completed and new requirements are identified.*
