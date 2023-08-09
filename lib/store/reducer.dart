import 'package:redux/redux.dart';
import 'package:signal/model/Models.dart';

class ChatState {
  //Authentication
  final String errorMessage;

  final bool isAuthenticated;

  bool? regLoading;

  bool? logLoading;

  final User? user;
  final List<UserData> allUser;

  //Chat state values
  final String activeUser;
  final String activeRoom;

//Chat messages
  final List<Map<dynamic, dynamic>> messages;

  ChatState(
      {required this.errorMessage,
      required this.isAuthenticated,
      this.regLoading,
      this.logLoading,
      this.user,
      required this.allUser,
      required this.activeUser,
      required this.activeRoom,
      required this.messages});

//Chat state constructor
  ChatState copyWith(
      {errMsg,
      bool? isAuthenticated,
      User? user,
      List<UserData>? allUser,
      String? activeRoom,
      String? activeUser,
      List<Map<dynamic, dynamic>>? messages}) {
    return ChatState(
        errorMessage: errMsg ?? errorMessage,
        isAuthenticated: isAuthenticated ?? this.isAuthenticated,
        user: user ?? this.user,
        allUser: allUser ?? this.allUser,
        activeRoom: activeRoom ?? this.activeRoom,
        activeUser: activeUser ?? this.activeUser,
        messages: messages ?? this.messages);
  }
}

//Authentication Reducer
ChatState authReducer(ChatState state, dynamic action) {
  return state;
}

//Reset reducer
ChatState resetReducer(ChatState state, dynamic action) {
  return state;
}

//Combine reducers
final allReducers = combineReducers<ChatState>([authReducer, resetReducer]);
