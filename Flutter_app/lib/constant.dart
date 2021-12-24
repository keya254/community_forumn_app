// ------STRINGS-----------
import 'dart:html';

const baseURL = 'http://192.168.43.109:8000/api';
const loginURL = baseURL + '/login';
const registerURL = baseURL + '/register';
const logoutURL = baseURL + '/logout';
const userURL = baseURL + '/user';
const postURL = baseURL + '/posts';
const commentsURL = baseURL + '/comments';

//---Errors-----
const serverError = 'Server error';
const unauthorized = 'Unauthorized';
const somethingWentWrong = 'Something went wrong, try again!';