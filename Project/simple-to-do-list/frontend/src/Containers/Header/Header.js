import React from 'react';
import './Header.css';

export default function Header(props) {
  return (
    <header className="header">
      <div className="container clearfix">
        <h1 className="header__brand">
          <a className="header__text" href="/">
            NT132 - Group 06
          </a>
        </h1>
        {props.children}
      </div>
    </header>
  );
}
