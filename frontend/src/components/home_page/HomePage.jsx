import React from "react";
import { userActions } from "../../actions";
import { Button } from "react-bootstrap";

import "../../assets/stylesheets/Login.css";
import { connect } from "react-redux";

class HomePage extends React.Component {
  handleLogout = () => {
    this.props.logout();
  };

  render() {
    return (
      <div className="col-md-6 col-md-offset-3">
        <h1>Welcome to home page</h1>
        <Button variant="primary" onClick={this.handleLogout} type="submit">
          Logout
        </Button>
      </div>
    );
  }
}

function mapStateToProps(state) {
  const { loggedOut } = state.authentication;
  return { loggedOut };
}

const mapDispatchToProps = {
  logout: userActions.logout
};

const connectedHomePage = connect(
  mapStateToProps,
  mapDispatchToProps
)(HomePage);

export { connectedHomePage as HomePage };
