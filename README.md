# addictionsupportroom.mobile

# Auto Route Guideline

## how to add Route to a the route.dart

AutoRoute(path: '/example', page: examplepage)
or
MaterialRoute(path: '/example', page: examplepage)

## more example

routes: <AutoRoute>[
//authentication routes
AutoRoute(
initial: true,
path: '/login',
page: LoginScreen,
children: [
RedirectRoute(path: '*', redirectTo: ''),
],
),
AutoRoute(
path: '/signup',
page: SignupScreen,
children: [
RedirectRoute(path: '*', redirectTo: ''),
],
),

    //user routes with a nested router
    AutoRoute(
      path: '/user',
      page: UserScreen,
      children: [
        AutoRoute(path: '', page: UserProfileScreen),
        AutoRoute(path: 'details/*', page: UserDetailsScreen),
        AutoRoute(path: 'friends/*', page: UserFriendsScreen),
        groupTabRouter,
        // redirect all other paths
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),

    // redirect all other paths
    RedirectRoute(path: '*', redirectTo: '/login'),
    //Home

],

https://pub.dev/packages/auto_route

Use the [watch] flag to watch the files' system for edits and rebuild as necessary.

flutter packages pub run build_runner watch
if you want the generator to run one time and exits use

flutter packages pub run build_runner build
