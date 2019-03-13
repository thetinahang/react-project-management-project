import React, { Component } from 'react';
import './App.css';
import { Navbar, Nav, NavDropdown } from 'react-bootstrap';
import ProjectsContainer from './containers/ProjectsContainer';


class App extends Component {

  constructor(props) {
    super(props);
    this.state = { response: {title: "", description: "", final_deadline: "", budget: "" } };
  }

  componentDidMount() {
    fetch('/api/projects')
      .then(response => console.log(response))
      .catch(error => console.log(error));
  }

render() {
    return (
      <div className="App">
        <Navbar bg="dark" variant="dark" expand="lg">
          <Navbar.Brand href="#home">NREL Buildings Database</Navbar.Brand>
          <Navbar.Toggle aria-controls="basic-navbar-nav" />
          <Navbar.Collapse id="basic-navbar-nav">
            <Nav className="mr-auto">
            <Nav.Link href="/">Home</Nav.Link>
            <Nav.Link href="https://developer.nrel.gov/docs/buildings/building-case-studies/" target="_blank">NREL Developer Link</Nav.Link>
              <NavDropdown title="Actions" id="basic-nav-dropdown">
                <NavDropdown.Item href="#action/3.1">Action</NavDropdown.Item>
                <NavDropdown.Item href="#action/3.2">Another action</NavDropdown.Item>
                <NavDropdown.Item href="#action/3.3">Something</NavDropdown.Item>
                <NavDropdown.Divider />
                <NavDropdown.Item href="#action/3.4">Separated link</NavDropdown.Item>
              </NavDropdown>
            </Nav>
          </Navbar.Collapse>
        </Navbar>
        <header className="App-header">
          <h1>Tina's React+Redux Project</h1>
          <h3>Making use of in-depth information and data on high-performance, green building projects across the United States and abroad. </h3>
        </header>
        <ProjectsContainer projects={this.state.projects}/>
        
      </div>
    )
  }
}

export default App;
