import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import styles from './resgistroTrb.module.css';

const RegistroTrb = () => {
    const [perfil, setPerfil] = useState(null);
    const [documento, setDocumento] = useState(null);
    const [isSubmitted, setIsSubmitted] = useState(false);

    const handlePerfilChange = (e) => {
        setPerfil(URL.createObjectURL(e.target.files[0]));
    };

    const handleDocumentoChange = (e) => {
        setDocumento(URL.createObjectURL(e.target.files[0]));
    };

    const handleSubmit = (e) => {
        e.preventDefault();
        setIsSubmitted(true);
    };

    return (
        <div className={styles.container}>
            <h1 className={styles.title}>Registro de Trabajadores</h1>
            <form onSubmit={handleSubmit}>
                <div className={styles.images}>
                    <label>
                        Foto de perfil:
                        <input type="file" name="fotoPerfil" onChange={handlePerfilChange} />
                    </label>
                    {perfil && <img src={perfil} alt="Foto de perfil" className={styles.preview} />}
                    <label>
                        Documento:
                        <input type="file" name="imagenDocumento" onChange={handleDocumentoChange} />
                    </label>
                    {documento && <img src={documento} alt="Imagen de documento" className={styles.preview} />}
                </div>
                <label>
                    Nombre:
                    <input type="text" name="nombre" />
                </label>
                <label>
                    Dirección de residencia:
                    <input type="text" name="direccionResidencia" />
                </label>
                <label>
                    Labor:
                    <select name="labor">
                        <option value="plomero">Plomero</option>
                        <option value="fontanero">Fontanero</option>
                        <option value="profesorIngles">Profesor de inglés</option>
                        <option value="paseadorPerros">Paseador de perros</option>
                        {/* Aquí se puede agregar más opciones  aunque esto debe ir con la DB*/}
                    </select>
                </label>
                <label>
                    Precio por hora o unidad de labor:
                    <input type="number" name="precio" />
                </label>
                <input type="submit" value="Enviar" />
            </form>
            {isSubmitted && <p className={styles.successMessage}>**Registro exitoso**</p>}
            {isSubmitted && <Link to="/">Volver a la página principal</Link>}
        </div>
    );
};

export default RegistroTrb;
