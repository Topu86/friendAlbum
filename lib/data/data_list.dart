import 'package:friendbook/model/friend_model.dart';

List<Friends> friend(){
List<Friends> list = [];
Friends friendsModel = Friends();
friendsModel.name = 'Shabit';
friendsModel.image = 'assets/a.jpg';
friendsModel.pimage = 'assets/b.jpg';
friendsModel.description = "Lorem Ipsum is simply dummy text of the printing and "
"typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever"
 "Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software"
" like Aldus PageMaker including versions of Lorem Ipsum." ;
list.add(friendsModel);

friendsModel = Friends();
friendsModel.name = 'Nafi';
friendsModel.image = 'assets/a.jpg';
friendsModel.pimage = 'assets/b.jpg';
friendsModel.description = "On the other hand, we denounce"
" with righteous indignation and dislike men who are so "
" In a free hour, when our power of choice is untrammelled and when nothing "
"prevents our being able to do what we like best, every pleasure is to be welcomed and ";
list.add(friendsModel);
friendsModel = Friends();
friendsModel.name = 'Sapon';
friendsModel.image = 'assets/c.jpg';
friendsModel.pimage = 'assets/b.jpg';
friendsModel.description = "On the other hand, we denounce"
    " with righteous indignation and dislike men who are so "
    " In a free hour, when our power of choice is untrammelled and when nothing "
    "prevents our being able to do what we like best, every pleasure is to be welcomed and ";
list.add(friendsModel);
friendsModel = Friends();
friendsModel.name = 'Ripon';
friendsModel.image = 'assets/v.jpg';
friendsModel.pimage = 'assets/b.jpg';
friendsModel.description = "On the other hand, we denounce"
    " with righteous indignation and dislike men who are so "
    " In a free hour, when our power of choice is untrammelled and when nothing "
    "prevents our being able to do what we like best, every pleasure is to be welcomed and ";
list.add(friendsModel);


return list;
}