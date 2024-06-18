import React from 'react';
import styles from './registerUser.module.css';
import { Link } from 'react-router-dom';

const RegisterUser = () => {
    return (
        <div className={styles.container}>
            <h1 className={styles.title}>Registro de Usuarios</h1>
            <form>
                <label>
                    Información personal:
                    <input type="text" name="infoPersonal" />
                </label>
                <label>
                    Dirección de residencia:
                    <input type="text" name="direccionResidencia" />
                </label>
                <label>
                    Recibo de servicio público:
                    <input type="file" name="reciboServicio" />
                </label>
                <label>
                    Email:
                    <input type="email" name="email" />
                </label>
                <label>
                    Número de celular:
                    <input type="tel" name="celular" />
                </label>
                <label>
                    Medio de pago:
                    <input type="text" name="medioPago" />
                </label>
                <Link to="/login">
                    <input type="submit" value="Registrar" />
                </Link>
            </form>
        </div>
    );
};

export default RegisterUser;
