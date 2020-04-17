import { userConstants } from '../constants';
import { userService } from '../services';
import { history } from '../config';

export const userActions = {
  login,
  logout
};

function login(email, password) {

  return dispatch => {
    dispatch({ type: userConstants.LOGIN_REQUEST, email })

    userService.login(email, password).then(
      user => {
        dispatch({ type: userConstants.LOGIN_SUCCESS, user })
        history.push('/');
      },
      error => {
        dispatch({ type: userConstants.LOGIN_FAILURE, error });
      }
    );
  }
}

function logout() {
  return dispatch => {
    userService.logout()
    dispatch({ type: userConstants.LOGOUT })
    history.push('/login');
  }
}
