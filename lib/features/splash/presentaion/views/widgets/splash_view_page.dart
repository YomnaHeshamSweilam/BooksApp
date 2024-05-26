import 'package:booksapp/core/utils/assets.dart';
import 'package:booksapp/core/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin{
  late AnimationController animationController ;
  late Animation<Offset> customAnimation;
  @override

  void initState(){
    super.initState();

    initSlidingAnimation();
    initNavigation();
      }

      @override
        void dispose(){
          super.dispose();
        }

  


  Widget build(BuildContext context) {
    return Scaffold(
      body : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Image.asset(AssetsData.image3),
          Image.asset(AssetsData.logo),
          const SizedBox(height: 5,),
          AnimatedBuilder(
            animation: customAnimation,
            builder: (BuildContext context, _) {
              return SlideTransition(
              position: customAnimation,
              child: const Center (
                child: Text('Start Your Journey With Books', 
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
              ),
            );

              },
    
          ),
          
          
      
        ],
      ),
    );
  }

    void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this, 
    duration: const Duration(seconds: 1));
    
    customAnimation = Tween<Offset>(begin: const Offset(0,3) ,end: Offset.zero ).animate(animationController);
      animationController.forward();
     
  }

  void initNavigation() {
    Future.delayed(const Duration(seconds: 2,),(){
          // Get.to(()=> const HomeView(), transition: Transition.fade, duration: kTransitionDuration);
          GoRouter.of(context).push(AppRouter.kHomeView);
        });
  }
}