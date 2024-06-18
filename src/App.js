import logo from './logo.svg';
//import './App.css';
import React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Home from './Screens/Home';
import RegistroTrb from './Screens/resgitroTrb';
import Login from './Screens/login';
import Servicio from './Screens/servicio';
import RegisterUser from './Screens/registerUser';

const App = () => {
    return (
        <Router>
            <Routes>
                <Route path="/" element={<Home />} />
                <Route path="/registro" element={<RegistroTrb />} />
                <Route path="/login" element={<Login />} />
                <Route path="/servicio" element={<Servicio />} />
                <Route path="/registerUser" element={<RegisterUser />} />
            </Routes>
        </Router>
    );
};

export default App;

