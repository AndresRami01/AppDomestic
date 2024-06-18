import React, { useState } from 'react';
import styles from './servicio.module.css';

const Servicio = () => {
    const [busqueda, setBusqueda] = useState('');
    const [descripcion, setDescripcion] = useState('');
    const [calificacion, setCalificacion] = useState(0);
    const [pago, setPago] = useState(0);
    const [metodoPago, setMetodoPago] = useState('debito');
    const labores = []; // Aquí puedes agregar las labores que se ofertan

    const handleSolicitar = () => {
        // Aquí puedes manejar la solicitud del servicio
    };

    const handlePago = () => {
        // Aquí puedes manejar el pago
    };

    return (
        <div className={styles.container}>
            <h1 className={styles.title}>DomesticApp</h1>
            <div className={styles.searchContainer}>
                <input
                    type="text"
                    placeholder="Buscar trabajador"
                    value={busqueda}
                    onChange={e => setBusqueda(e.target.value)}
                    className={styles.input}
                />
                <button onClick={handleSolicitar} className={styles.button}>
                    Buscar
                </button>
            </div>
            <select className={styles.select}>
                {labores.map((labor, index) => (
                    <option key={index} value={labor}>
                        {labor}
                    </option>
                ))}
            </select>
            <textarea
                placeholder="Descripción de la labor a realizar"
                value={descripcion}
                onChange={e => setDescripcion(e.target.value)}
                className={styles.textarea}
            />
            <div className={styles.ratingContainer}>
                <p>Calificación:</p>
                {[1, 2, 3, 4, 5].map(i => (
                    <button
                        key={i}
                        onClick={() => setCalificacion(i)}
                        className={`${styles.star} ${i <= calificacion ? styles.filled : ''}`}
                    >
                        ★
                    </button>
                ))}
                <button onClick={() => {}} className={styles.button}>
                    Calificar
                </button>
            </div>
            <input
                type="number"
                placeholder="Monto a pagar"
                value={pago}
                onChange={e => setPago(e.target.value)}
                className={styles.input}
            />
            <div className={styles.paymentMethodContainer}>
                <input type="radio" id="debito" name="metodoPago" value="debito" checked={metodoPago === 'debito'} onChange={e => setMetodoPago(e.target.value)} />
                <label htmlFor="debito">Débito</label>
                <input type="radio" id="credito" name="metodoPago" value="credito" checked={metodoPago === 'credito'} onChange={e => setMetodoPago(e.target.value)} />
                <label htmlFor="credito">Crédito</label>
            </div>
            <button onClick={handlePago} className={styles.button}>
                Realizar pago
            </button>
        </div>
    );
};

export default Servicio;
