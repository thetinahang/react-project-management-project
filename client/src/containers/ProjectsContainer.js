// container component
import React, { Component } from 'react';

class ProjectsContainer extends Component {

	render() {
		const projects = this.props.projects;
		return (
			<div className="projects-container">
				<h1>Hello from ProjectsContainer</h1>
				projects
			</div>
		);
	}
};

export default ProjectsContainer;



