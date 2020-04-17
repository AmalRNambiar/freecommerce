import React from 'react';
import { Router, Switch, Redirect } from 'react-router-dom';
import { Authorize } from '../../config';
import { Authenticate } from '../../config';
import { history } from '../../config/history';

import { LoginPage } from '../login/LoginPage';
import { HomePage } from '../home_page';

import 'bootstrap/dist/css/bootstrap.min.css';

class App extends React.Component {
  render() {
    return (
      <div className="jumbotron">
        <div className="container">
          <div className="col-sm-8 col-sm-offset-2">
            <Router history={history}>
              <Switch>
                <Authorize exact path="/" component={HomePage} />
                <Authenticate path="/login" component={LoginPage} />
                <Redirect from="*" to="/" />
              </Switch>
            </Router>
          </div>
        </div>
      </div>
    );
  }
}

export default App;
