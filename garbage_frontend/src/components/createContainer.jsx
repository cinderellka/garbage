import React, {useState} from 'react';
import { useDispatch, useSelector } from 'react-redux';
import {GetContainers} from "../store/thunks";
import Error from "./error";
import {garbageType, setGarbageTitle} from "./constants";
import {useTranslation} from "react-i18next";
import Cookies from 'js-cookie';

const CreateContainer = ({active, setActive}) => {
    const {t, i18n} = useTranslation();
    const [garbageID, setGarbageID]= useState(garbageType.glass);
    const dispatch = useDispatch();
    const [errors, setErrors] = useState([]);
    const AuthUser = useSelector(state => state.register);
    const index = useSelector(state => state.page.selectedIndex);

    const AddContainer = async () => {
        setErrors([]);
        let maxFullness = document.getElementById("max_f").value;
        let export_price = document.getElementById("export_p").value;
        let recycling_price = document.getElementById("recycling_p").value;

        const body = {garbageID, maxFullness, export_price, recycling_price, houseID: index}
        const url = `http://127.0.0.1:8000/api/container/create${ AuthUser.role === 'moderator' ? '' : '/any' }`;
        const response = await fetch(url, {
            method: 'POST',
            headers: {'Content-Type': 'application/json', 'X-Requested-With': 'XMLHttpRequest', 'Authorization': 'Bearer ' + Cookies.get('jwt')},
            credentials: 'include',
            body: JSON.stringify(body),
        });
        const content = await response.json();
        if(response.status === 201){
            setActive(false);
            dispatch(GetContainers());
        } else if(response.status === 422){
            for (let key in content.errors) {
                setErrors(error => [...error, content.errors[key].toString()]);
            }
        } else if(response.status === 400){
            setErrors(error => [...error, content.errors.toString()]);
        }
    }
    return(
        <div className={active ? "modalWindow active" : "modalWindow"} onClick={() => setActive(false)}>
            <div className="modal__content" onClick={e => e.stopPropagation()}>
                <h3>{t("admin.houses.container.create")}</h3>
                {
                    errors.map((errorText, index) => <Error key={index} errorText = {errorText} />)
                }
                <hr/>
                <div className="form-group-container">
                    <label>{t("admin.houses.container.garbageID")}</label>
                    <select className="form-select" aria-label="Default select example" onChange={e => setGarbageID(e.target.value)}>
                        <option value={garbageType.glass}>{setGarbageTitle(garbageType.glass)}</option>
                        <option value={garbageType.paper}>{setGarbageTitle(garbageType.paper)}</option>
                        <option value={garbageType.organic}>{setGarbageTitle(garbageType.organic)}</option>
                    </select>
                </div>
                <div className="form-group-container">
                    <label>{t("admin.houses.container.max_fullness")}</label>
                    <input id="max_f" type="text" className="form-control" />
                </div>
                <div className="form-group-container">
                    <label>{t("admin.houses.container.export_price")}</label>
                    <input id="export_p" type="text" className="form-control" />
                </div>
                <div className="form-group-container">
                    <label>{t("admin.houses.container.recycling_price")}</label>
                    <input id="recycling_p" type="text" className="form-control" />
                </div>
                <hr/>
                <button type="button" className="btn btn-primary" onClick={AddContainer}>{t("admin.houses.container.submit")}</button>
            </div>
        </div>
    )
}

export default CreateContainer;