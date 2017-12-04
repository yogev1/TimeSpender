import React from 'react';
import PropTypes from 'prop-types';
import Age_Choise from '../components/Age_Choise.js';


class Age extends React.Component {

render() {
    return (
      <div>
        <div className="container">
          <div className="row">
            <div className="col-md-4">
              <Age_Choise />
            </div>
            <div className="col-md-4">
              <Age_Choise />
            </div>
            <div className="col-md-4">
              <Age_Choise />
            </div>
          </div>
          <div className="row">  
            <div className="col-md-4">
              <Age_Choise />
            </div>
            <div className="col-md-4">
              <Age_Choise />
            </div>
            <div className="col-md-4">
              <Age_Choise />
            </div>            
          </div>
        </div>      
      </div>
    );
  }
}



export default Age; 