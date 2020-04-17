import React from "react";
import { Form, Button } from "react-bootstrap";
import { userActions } from "../../actions";
import "../../assets/stylesheets/Login.css";
import { connect } from "react-redux";

class LoginPage extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      email: "",
      password: "",
      submitted: false
    };
  }

  handleChange = e => {
    const { name, value } = e.target;
    this.setState({ [name]: value });
  };

  validateForm = () => {
    const { email, password } = this.state;
    return email.length > 0 && password.length > 0;
  };

  handleSubmit = event => {
    event.preventDefault();

    this.setState({ submitted: true });
    const { email, password } = this.state;
    if (email && password) {
      this.props.login(email, password);
    }
  };

  render() {
    const { email, password, submitted } = this.state;
    return (
      <div className="Login">
        <Form onSubmit={this.handleSubmit}>
          <Form.Group controlId="formBasicEmail">
            <Form.Label>Email address</Form.Label>
            <Form.Control
              autoFocus
              type="email"
              name="email"
              value={email}
              onChange={this.handleChange}
            />
            <Form.Text className="text-muted">
              <p>We'll never share your email with anyone else.</p>
            </Form.Text>
          </Form.Group>

          <Form.Group controlId="formBasicPassword">
            <Form.Label>Password</Form.Label>
            <Form.Control
              value={password}
              name="password"
              onChange={this.handleChange}
              type="password"
            />
          </Form.Group>
          <Button
            variant="primary"
            disabled={!this.validateForm()}
            type="submit"
          >
            Sign In
          </Button>
        </Form>
      </div>
    );
  }
}

function mapStateToProps(state) {
  const { loggingIn } = state.authentication;
  return { loggingIn };
}

const mapDispatchToProps = {
  login: userActions.login
};

const connectedLoginPage = connect(
  mapStateToProps,
  mapDispatchToProps
)(LoginPage);
export { connectedLoginPage as LoginPage };
