import React from 'react';
import {Link} from 'react-router-dom';
import {useDispatch, useSelector} from "react-redux";
import {LOGOUT_USER} from "../store/userReducer";
import { useTranslation } from "react-i18next";
import { changeLanguage } from "../translation/i18n";
import {SET_PAGE} from "../store/pageReducer";
import Cookies from 'js-cookie';

function Navbar(){
    const {t, i18n} = useTranslation();

    const user = useSelector(state => state.register);
    const dispatch = useDispatch();

    const Logout = async () => {
        const response = await fetch('http://127.0.0.1:8000/api/user/logout', {
            method: 'POST',
            headers: {'Content-Type': 'application/json', 'X-Requested-With': 'XMLHttpRequest', },
            credentials: 'include',
        });
        Cookies.set('jwt', undefined);
        const content = await response.json();
        dispatch({type: LOGOUT_USER});
        dispatch({type: SET_PAGE, payload: 'Home'});
        console.log(content);
    }

    let languageSelector =
        <ul className="navbar-nav mr-auto">
            <select className="form-select" aria-label="Default select example" onChange={(e) => changeLanguage(e.target.value)} defaultValue="en">
                <option value="en">English</option>
                <option value="ua">Українська</option>
            </select>
        </ul>

    return(
        <div className='navbarApp'>
            <div className="navbar navbar-light bg-light">
                <div className="logoDiv">
                    <img src="https://i.imgur.com/mKVD7zt.png" width={50} height={50} alt="logo"/>
                    <Link className="navbar-brand" to="/">{t("navbar.logo")}</Link>

                </div>

                <div className="AuthContainer navbar-brand">
                    {
                        user.isLoggedIn
                            ?
                                <div className="d-flex justify-content-end bd-highlight">
                                    <ul className="navbar-nav mr-auto">
                                        <Link to="/home" className="nav-link">{t("navbar.dashboard")}</Link>
                                    </ul>
                                    <ul className="navbar-nav mr-auto">
                                        <Link to="/login" onClick={Logout} className="nav-link">{t("navbar.logout")}</Link>
                                    </ul>
                                    {languageSelector}
                                </div>
                            :
                                <div className="d-flex justify-content-end bd-highlight">
                                    <ul className="navbar-nav mr-auto">
                                        <Link to="/login" className="nav-link">{t("navbar.login")}</Link>
                                    </ul>
                                    <ul className="navbar-nav mr-auto">
                                        <Link to="/register" className="nav-link">{t("navbar.register")}</Link>
                                    </ul>
                                    {languageSelector}
                                </div>
                    }
                </div>

            </div>

        </div>
    )
}

export default Navbar;