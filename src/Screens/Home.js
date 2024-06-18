import React from 'react';
import { Link } from 'react-router-dom';
import styles from './Home.module.css';

const Home = () => {
    return (
        <div className={styles.container}>
            <h1 className={styles.title}>Bienvenidos a DomesticApp</h1>
            <h2 className={styles.subtitle}>Tu plataforma de servicios domésticos</h2>
            <Link to="/registro">
                <button className={styles.button}>Registro de trabajadores</button>
            </Link>
            <Link to="/login">
                <button className={styles.button}>Ingreso usuarios</button>
            </Link>
        </div>
    );
};

export default Home;
