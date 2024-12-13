import React from 'react';

import './Home.css';
import NavBar from '../../Containers/Navbar/Navbar';

export default function Home() {
  return (
    <>
      <NavBar />
      <section className="welcome">
        <div className="container">
          <div className="welcome__text">
            <h2 className="welcome__heading">
              Welcome to simple to do list app.
            </h2>
            <p className="welcome__paragraph">Login or Sign Up to continue.</p>
          </div>
        </div>
        <div className="footer-text">
          Group Project NT132 - Group 06
          <br></br>
          Deploy Web Application with Docker
        </div>
      </section>
    </>
  );
}
