import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import { FaUser, FaLock } from 'react-icons/fa';
import styles from './login.module.css';

const Login = () => {
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');

    return (
        <div className={styles.container}>
            <h1 className={styles.title}>Ingreso de Usuarios</h1>
            <form>
                <label>
                    <FaUser />
                    Email:
                    <input type="email" name="email" value={email} onChange={e => setEmail(e.target.value)} />
                </label>
                <label>
                    <FaLock />
                    Contraseña:
                    <input type="password" name="password" value={password} onChange={e => setPassword(e.target.value)} />
                </label>
                <Link to={email && password ? "/servicio" : "/login"}>
                    <input type="submit" value="Acceder" className={styles.submitButton} />
                </Link>
            </form>
            <Link to="/registerUser">
                <button className={styles.registerButton}>Registrar</button>
            </Link>
        </div>
    );
};

export default Login;
