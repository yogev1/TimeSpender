import React from 'react';
import PropTypes from 'prop-types';
import Location_Choise from '../components/Location_Choise.js';


class Location extends React.Component {

render() {
    return (
      <div>
        <div className="container">
          <div className="row">
            <div className="col-md-4">
              <Location_Choise />
            </div>
            <div className="col-md-4">
              <Location_Choise />
            </div>
            <div className="col-md-4">
              <Location_Choise />
            </div>
          </div>
          <div className="row">  
            <div className="col-md-4">
              <Location_Choise />
            </div>
            <div className="col-md-4">
              <Location_Choise />
            </div>
            <div className="col-md-4">
              <Location_Choise />
            </div>            
          </div>
        </div>      
      </div>
    );
  }
}



export default Location; 