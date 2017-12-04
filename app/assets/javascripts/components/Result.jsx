import React from 'react';
import PropTypes from 'prop-types';
import Result_Choise from '../components/Result_Choise.js';


class Result extends React.Component {

render() {
    return (
      <div>
        <div className="container">
          <div className="row">
            <div className="col-md-4">
              <Result_Choise />
            </div>
            <div className="col-md-4">
              <Result_Choise />
            </div>
            <div className="col-md-4">
              <Result_Choise />
            </div>
          </div>
          <div className="row">  
            <div className="col-md-4">
              <Result_Choise />
            </div>
            <div className="col-md-4">
              <Result_Choise />
            </div>
            <div className="col-md-4">
              <Result_Choise />
            </div>            
          </div>
        </div>      
      </div>
    );
  }
}



export default Result; 