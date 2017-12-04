import Purpose_Choise from '../components/Purpose_Choise.js';
import { Button, ButtonGroup, CardImg } from 'reactstrap';

class Purpose extends React.Component {

  constructor (props) {
    super(props);
    this.onRadioBtnClick = this.onRadioBtnClick.bind(this);
  }

  onRadioBtnClick(rSelected) {
    this.setState({ rSelected });
  }

render() {

    return (
      <div>      
        <div className="container">
          <ButtonGroup>
            <div className="row">
              <div className="col-md-4">          
                <Button color="primary" className="cover" onClick={() => this.onRadioBtnClick("grab-a-drink")} active={this.state.rSelected === 1}><h1>Grab A Drink</h1></Button>
              </div>
              <div className="col-md-4">                 
                <Button color="primary" className="cover" onClick={() => this.onRadioBtnClick("party")} active={this.state.rSelected === 2}><h1>Party</h1></Button>
              </div>
              <div className="col-md-4">
                <Button color="primary" className="cover" onClick={() => this.onRadioBtnClick("dine")} active={this.state.rSelected === 3}><h1>Dine</h1></Button>
              </div>
              <div className="col-md-4">
                <Button color="primary" className="cover" onClick={() => this.onRadioBtnClick("museum")} active={this.state.rSelected === 4}><h1>Art & Museums</h1></Button>
              </div>
              <div className="col-md-4">
                <Button color="primary" className="cover" onClick={() => this.onRadioBtnClick("explore-the-city")} active={this.state.rSelected === 5}><h1>Explore The City</h1></Button>
              </div>
              <div className="col-md-4">
                <Button color="primary" className="cover" onClick={() => this.onRadioBtnClick("feel-lucky")} active={this.state.rSelected === 6}><h1>Feeling Lucky</h1></Button>
              </div>
            </div>  
          </ButtonGroup>
          <p>Selected: {this.state.rSelected}</p>         
        </div>      
      </div>
    );
  }
}

Purpose.propTypes = {
  
  purposeContent: PropTypes.string.isRequired,

};

export default Purpose;      
