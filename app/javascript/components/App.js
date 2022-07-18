import React from 'react'
import {Routes, Route} from "react-router-dom";
import Home from './Home';
import Trains from './Trains';


function App()  {
  return (    
      <Routes>
        <Route exact path="/" element={<Home />} />         
        <Route exact path="/trains" element={<Trains />} />       
      </Routes>     
  );
}

export default App;