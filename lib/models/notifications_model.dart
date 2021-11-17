class NotificationModel {
  late String name;
  late String avatar;
  late String time;
  late String description;
  NotificationModel({
    required this.name,
    required this.avatar,
    required this.time,
    required this.description,
  });
}

List<NotificationModel> notificationData = [
  NotificationModel(
    name: "User 1",
    avatar: "assets/images/post1.jpg",
    time: "Just now",
    description: "description",
  ),
  NotificationModel(
    name: "User 2",
    avatar: "assets/images/post2.jpg",
    time: "7 minute ago",
    description: "description",
  ),
  NotificationModel(
    name: "User 3",
    avatar: "assets/images/post3.jpg",
    time: "06:00 am",
    description: "description",
  ),
  NotificationModel(
    name: "User 4",
    avatar: "assets/images/post4.jpg",
    time: "yesterday",
    description: "description",
  ),
  NotificationModel(
    name: "User 5",
    avatar: "assets/images/post5.jpg",
    time: "2 days ago",
    description: "description",
  ),
  NotificationModel(
    name: "User 6",
    avatar: "assets/images/post6.jpg",
    time: "a week ago",
    description: "description",
  ),
  NotificationModel(
    name: "User 7",
    avatar: "assets/images/post7.jpg",
    time: "2 months ago",
    description: "description",
  ),
  NotificationModel(
    name: "User 8",
    avatar: "assets/images/post8.jpg",
    time: "1 year ago",
    description: "description",
  ),
];
