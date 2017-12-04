
class Place_Filter extends React.Component {

  constructor() {
    super();
    this.state = {
      show: false
    }
  }
  onClick(e){
    e.preventDefault();
    this.setState({show: !this.state.show})
  } 

  render() {

    const steps =
    [
      {name: 'Purpose', component: <Purpose />},
      {name: 'Location', component: <Location />},
      {name: 'Age Range', component: <Age />},
      {name: 'Result', component: <Result />},
    ]

    return (
       <div className="App">
        <p className="App-intro">
          <a onClick={this.onClick.bind(this)} href='#'><h1>Click Here To Start Exploring</h1></a>
          {this.state.show && <Purpose id="show" />}
        </p>

      </div>
    );
  }
}
