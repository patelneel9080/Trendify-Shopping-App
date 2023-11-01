
class OnBoardingModel {

  final String title;
  final String subTitle;

  OnBoardingModel(
      { required this.subTitle, required this.title});
}

List<OnBoardingModel> onBoardingScreen = [
  OnBoardingModel(

      subTitle: "I provide essential stuff for your ui designs every tuesday!",
      title: "Welcome to Surf."),
  OnBoardingModel(

      subTitle: "Make sure to take a look my upload profile every tuesday",
      title: "Design Template uploads Every Tuesday!"),
  OnBoardingModel(

      subTitle: "You can follow me if you want and comment on any to get some freebies",
      title: "Download now!"),
];
