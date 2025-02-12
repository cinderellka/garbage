import React from 'react';
import {useDispatch, useSelector} from "react-redux";
import {DeleteUser} from "../../../store/thunks";
import {DELETE_USER} from "../../../store/usersDataReducer";
import {useTranslation} from "react-i18next";

const UserTableRow = (props) => {
    const {t, i18n} = useTranslation();
    const dispatch = useDispatch();
    const setIndexPage = (page) => {
        dispatch({type: 'SET_PAGE', payload: page});
        dispatch({type: 'SET_INDEX', payload: props.users.userID});
    }

    const deleteUser = (id) => {
        let isConfirm = window.confirm(t("admin.users.delete") + props.users.userID + " " + props.users.first_name + " " + props.users.last_name);

        if(isConfirm) {
            dispatch(DeleteUser(id));
            dispatch({type: DELETE_USER, payload: id});
        }
        return;
    }

    return(
        <tr className="userRow" key={props.users.userID}>
            <td>{props.users.userID}</td>
            <td><div id="fn" data-value={props.users.first_name}>{props.users.first_name}</div></td>
            <td><div>{props.users.last_name}</div></td>
            <td>{props.users.email}</td>
            <td>{props.users.created_at.substring(2, 16).replace('T',' ')}</td>
            <td>{props.users.updated_at.substring(2, 16).replace('T',' ')}</td>
            <td>{props.users.houseTitle}</td>
            <td>{props.users.houseTitle}</td>
            <td>{props.users.name}</td>
            <td className="editIcon" onClick={() => {setIndexPage('UserEdit')}}>
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" className="bi bi-pen"
                     viewBox="0 0 16 16">
                    <path
                        d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z"/>
                </svg>
            </td>

            <td className="editIcon" onClick={() => {setIndexPage('UserStats')}}>
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" className="bi bi-eye"
                     viewBox="0 0 16 16">
                    <path
                        d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                    <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                </svg>
            </td>

            <td className="editIcon" onClick={() => deleteUser(props.users.userID)}>
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             className="bi bi-trash" viewBox="0 0 16 16">
                    <path
                                d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/><path fillRule="evenodd"
                                  d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                </svg>
            </td>
        </tr>
    )
}

export default UserTableRow;