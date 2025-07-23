import 'package:cardswipper/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CardSwipeController extends GetxController {
  final RxList<UserProfile> profiles = <UserProfile>[].obs;
  final RxInt currentIndex = 0.obs;
  final RxBool isLoading = true.obs;
  final RxList<UserProfile> likedProfiles = <UserProfile>[].obs;
  final RxList<UserProfile> dislikedProfiles = <UserProfile>[].obs;
  final RxList<Map<String, dynamic>> swipeHistory = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadProfiles();
  }

  void loadProfiles() {
    final List<UserProfile> sampleProfiles = [
      UserProfile(
        id: '1',
        name: 'Emma Wilson',
        title: 'Software Engineer',
        imageUrl: 'https://images.unsplash.com/photo-1494790108755-2616b612b17c?w=400&h=600&fit=crop&crop=face',
        age: 28,
        location: '5 km away',
      ),
      UserProfile(
        id: '2',
        name: 'James Rodriguez',
        title: 'Marketing Director',
        imageUrl: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400&h=600&fit=crop&crop=face',
        age: 32,
        location: '8 km away',
      ),
      UserProfile(
        id: '3',
        name: 'Sarah Chen',
        title: 'UX Designer',
        imageUrl: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=400&h=600&fit=crop&crop=face',
        age: 26,
        location: '3 km away',
      ),
      UserProfile(
        id: '4',
        name: 'Michael Brown',
        title: 'Data Scientist',
        imageUrl: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=400&h=600&fit=crop&crop=face',
        age: 30,
        location: '12 km away',
      ),
      UserProfile(
        id: '5',
        name: 'Lisa Anderson',
        title: 'Product Manager',
        imageUrl: 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=400&h=600&fit=crop&crop=face',
        age: 29,
        location: '6 km away',
      ),
      UserProfile(
        id: '6',
        name: 'David Kim',
        title: 'Frontend Developer',
        imageUrl: 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=400&h=600&fit=crop&crop=face',
        age: 27,
        location: '4 km away',
      ),
      UserProfile(
        id: '7',
        name: 'Jessica Taylor',
        title: 'Business Analyst',
        imageUrl: 'https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?w=400&h=600&fit=crop&crop=face',
        age: 31,
        location: '7 km away',
      ),
      UserProfile(
        id: '8',
        name: 'Alex Thompson',
        title: 'DevOps Engineer',
        imageUrl: 'https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?w=400&h=600&fit=crop&crop=face',
        age: 33,
        location: '9 km away',
      ),
      UserProfile(
        id: '9',
        name: 'Maya Patel',
        title: 'Graphic Designer',
        imageUrl: 'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?w=400&h=600&fit=crop&crop=face',
        age: 25,
        location: '2 km away',
      ),
      UserProfile(
        id: '10',
        name: 'Ryan Garcia',
        title: 'Sales Manager',
        imageUrl: 'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=400&h=600&fit=crop&crop=face',
        age: 34,
        location: '11 km away',
      ),
      UserProfile(
        id: '11',
        name: 'Sophie Martin',
        title: 'Content Creator',
        imageUrl: 'https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?w=400&h=600&fit=crop&crop=face',
        age: 24,
        location: '5 km away',
      ),
      UserProfile(
        id: '12',
        name: 'Carlos Mendez',
        title: 'Financial Advisor',
        imageUrl: 'https://images.unsplash.com/photo-1507591064344-4c6ce005b128?w=400&h=600&fit=crop&crop=face',
        age: 35,
        location: '13 km away',
      ),
      UserProfile(
        id: '13',
        name: 'Amanda Lee',
        title: 'HR Specialist',
        imageUrl: 'https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?w=400&h=600&fit=crop&crop=face',
        age: 28,
        location: '6 km away',
      ),
      UserProfile(
        id: '14',
        name: 'Jordan Williams',
        title: 'Mobile Developer',
        imageUrl: 'https://images.unsplash.com/photo-1463453091185-61582044d556?w=400&h=600&fit=crop&crop=face',
        age: 29,
        location: '8 km away',
      ),
      UserProfile(
        id: '15',
        name: 'Rachel Green',
        title: 'Project Manager',
        imageUrl: 'https://images.unsplash.com/photo-1517841905240-472988babdf9?w=400&h=600&fit=crop&crop=face',
        age: 32,
        location: '4 km away',
      ),
      UserProfile(
        id: '16',
        name: 'Daniel Singh',
        title: 'Backend Developer',
        imageUrl: 'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?w=400&h=600&fit=crop&crop=face',
        age: 30,
        location: '10 km away',
      ),
      UserProfile(
        id: '17',
        name: 'Olivia Johnson',
        title: 'Social Media Manager',
        imageUrl: 'https://images.unsplash.com/photo-1520813792240-56fc4a3765a7?w=400&h=600&fit=crop&crop=face',
        age: 26,
        location: '3 km away',
      ),
      UserProfile(
        id: '18',
        name: 'Kevin Chang',
        title: 'Quality Assurance',
        imageUrl: 'https://images.unsplash.com/photo-1558203728-00f45181dd84?w=400&h=600&fit=crop&crop=face',
        age: 27,
        location: '7 km away',
      ),
      UserProfile(
        id: '19',
        name: 'Isabella Rodriguez',
        title: 'UI/UX Designer',
        imageUrl: 'https://images.unsplash.com/photo-1531123897727-8f129e1688ce?w=400&h=600&fit=crop&crop=face',
        age: 25,
        location: '5 km away',
      ),
      UserProfile(
        id: '20',
        name: 'Nathan Davis',
        title: 'System Administrator',
        imageUrl: 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=400&h=600&fit=crop&crop=face',
        age: 31,
        location: '9 km away',
      ),
      UserProfile(
        id: '21',
        name: 'Chloe Miller',
        title: 'Marketing Specialist',
        imageUrl: 'https://images.unsplash.com/photo-1502823403499-6ccfcf4fb453?w=400&h=600&fit=crop&crop=face',
        age: 28,
        location: '6 km away',
      ),
      UserProfile(
        id: '22',
        name: 'Tyler Wilson',
        title: 'Web Developer',
        imageUrl: 'https://images.unsplash.com/photo-1521572267360-ee0c2909d518?w=400&h=600&fit=crop&crop=face',
        age: 26,
        location: '4 km away',
      ),
      UserProfile(
        id: '23',
        name: 'Grace Taylor',
        title: 'Data Analyst',
        imageUrl: 'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?w=400&h=600&fit=crop&crop=face',
        age: 29,
        location: '8 km away',
      ),
      UserProfile(
        id: '24',
        name: 'Marcus Johnson',
        title: 'Cloud Architect',
        imageUrl: 'https://images.unsplash.com/photo-1506277886164-e25aa3f4ef7f?w=400&h=600&fit=crop&crop=face',
        age: 33,
        location: '12 km away',
      ),
      UserProfile(
        id: '25',
        name: 'Aria Jackson',
        title: 'Technical Writer',
        imageUrl: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=400&h=600&fit=crop&crop=face',
        age: 27,
        location: '5 km away',
      ),
      UserProfile(
        id: '26',
        name: 'Lucas Brown',
        title: 'Cybersecurity Analyst',
        imageUrl: 'https://images.unsplash.com/photo-1566492031773-4f4e44671d66?w=400&h=600&fit=crop&crop=face',
        age: 30,
        location: '7 km away',
      ),
      UserProfile(
        id: '27',
        name: 'Zoe Anderson',
        title: 'Business Intelligence',
        imageUrl: 'https://images.unsplash.com/photo-1541101767792-f9b2b1c4f127?w=400&h=600&fit=crop&crop=face',
        age: 32,
        location: '9 km away',
      ),
      UserProfile(
        id: '28',
        name: 'Ethan Martinez',
        title: 'Full Stack Developer',
        imageUrl: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=400&h=600&fit=crop&crop=faces',
        age: 28,
        location: '6 km away',
      ),
      UserProfile(
        id: '29',
        name: 'Victoria Lee',
        title: 'Product Designer',
        imageUrl: 'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=400&h=600&fit=crop&crop=face',
        age: 26,
        location: '3 km away',
      ),
      UserProfile(
        id: '30',
        name: 'Sebastian Clark',
        title: 'AI Engineer',
        imageUrl: 'https://images.unsplash.com/photo-1560250097-0b93528c311a?w=400&h=600&fit=crop&crop=face',
        age: 31,
        location: '11 km away',
      ),
    ];

    profiles.assignAll(sampleProfiles);
    isLoading.value = false;
  }

  bool onSwipe(int previousIndex, int? currentIndex, CardSwiperDirection direction) {
    final profile = profiles[previousIndex];

    if (direction == CardSwiperDirection.left) {
      likedProfiles.add(profile);
      swipeHistory.add({'profile': profile, 'direction': CardSwiperDirection.left});
      Get.snackbar(
        'Liked!',
        'You liked ${profile.name}',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green.withOpacity(0.8),
        colorText: Colors.white,
        duration: Duration(seconds: 1),
        animationDuration: Duration(milliseconds: 300),
        margin: EdgeInsets.all(16),
        borderRadius: 8,
      );
    } else if (direction == CardSwiperDirection.right) {
      dislikedProfiles.add(profile);
      swipeHistory.add({'profile': profile, 'direction': CardSwiperDirection.right});
      Get.snackbar(
        'Disliked',
        'You passed on ${profile.name}',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red.withOpacity(0.8),
        colorText: Colors.white,
        duration: Duration(seconds: 1),
        animationDuration: Duration(milliseconds: 300),
        margin: EdgeInsets.all(16),
        borderRadius: 8,
      );
    }

    this.currentIndex.value = currentIndex ?? profiles.length;
    return true; // Return true to allow the swipe
  }

  bool get canUndo => swipeHistory.isNotEmpty;

  void rewind() {
    if (canUndo) {
      final lastSwipe = swipeHistory.removeLast();
      final profile = lastSwipe['profile'] as UserProfile;
      final direction = lastSwipe['direction'] as CardSwiperDirection;

      if (direction == CardSwiperDirection.right && likedProfiles.isNotEmpty) {
        likedProfiles.removeLast();
      } else if (direction == CardSwiperDirection.left && dislikedProfiles.isNotEmpty) {
        dislikedProfiles.removeLast();
      }

      currentIndex.value--;

      Get.snackbar(
        'Rewound',
        'Last swipe undone',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.blue.withOpacity(0.8),
        colorText: Colors.white,
        duration: Duration(seconds: 1),
        animationDuration: Duration(milliseconds: 300),
        margin: EdgeInsets.all(16),
        borderRadius: 8,
      );
    }
  }

  void likeCurrentCard() {
    if (currentIndex.value < profiles.length) {
      onSwipe(currentIndex.value, currentIndex.value + 1, CardSwiperDirection.right);
    }
  }

  void dislikeCurrentCard() {
    if (currentIndex.value < profiles.length) {
      onSwipe(currentIndex.value, currentIndex.value + 1, CardSwiperDirection.left);
    }
  }
}
