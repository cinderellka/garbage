import React, {useState} from 'react';
import {useSelector} from "react-redux";
import HouseTableRow from "./housesTableRow";
import {useTranslation} from "react-i18next";
import CreateHouse from "../createHouse";

const HouseTable = () => {
    const {t, i18n} = useTranslation();
    const [modalActive, setModalActive] = useState(false);
    const houses = useSelector(state => state.houses.houses);
    const role = useSelector(state => state.register.role);

    const min = 150;
    const columnTypeToRatioMap = {
        numeric: 1,
        'text-short': 1.67,
        'text-long': 3.33,
    };

    const table = document.querySelector('table');
    const columns = [];
    let headerBeingResized;

    const onMouseMove = (e) => requestAnimationFrame(() => {

        // Calculate the desired width
        let horizontalScrollOffset = document.documentElement.scrollLeft;
        const width = (horizontalScrollOffset + e.clientX) - headerBeingResized.offsetLeft;

        // Update the column object with the new size value
        const column = columns.find(({ header }) => header === headerBeingResized);
        column.size = Math.max(min, width) + 'px'; // Enforce our minimum

        // For the other headers which don't have a set width, fix it to their computed width
        columns.forEach((column) => {
            if(column.size.startsWith('minmax')){ // isn't fixed yet (it would be a pixel value otherwise)
                column.size = parseInt(column.header.clientWidth, 10) + 'px';
            }
        });

        /*
          Update the column sizes
          Reminder: grid-template-columns sets the width for all columns in one value
        */
        table.style.gridTemplateColumns = columns
            .map(({ header, size }) => size)
            .join(' ');
    });

    const onMouseUp = () => {

        window.removeEventListener('mousemove', onMouseMove);
        window.removeEventListener('mouseup', onMouseUp);
        headerBeingResized.classList.remove('header--being-resized');
        headerBeingResized = null;
    };

    const initResize = ({ target }) => {

        headerBeingResized = target.parentNode;
        window.addEventListener('mousemove', onMouseMove);
        window.addEventListener('mouseup', onMouseUp);
        headerBeingResized.classList.add('header--being-resized');
    };

    document.querySelectorAll('th').forEach((header) => {
        const max = columnTypeToRatioMap[header.dataset.type] + 'fr';
        columns.push({
            header,
            size: `minmax(${min}px, ${max})`,
        });
        header.querySelector('.resize-handle').addEventListener('mousedown', initResize);
    });

    return(
        <div className="App">
            {
                role === "admin" ?
                    <button type="button" className="btn btn-primary" onClick={() => setModalActive(true)}>{t("user.houses.create.title")}</button> : false
            }
            <CreateHouse active={modalActive} setActive={setModalActive} />
            <table className="houseTable">
                <thead>
                <tr>
                    <th>{t("admin.houses.table.id")}<span className="resize-handle"/></th>
                    <th>{t("admin.houses.table.title")}<span className="resize-handle"/></th>
                    <th>{t("admin.houses.table.location")}<span className="resize-handle"/></th>
                    <th>{t("admin.houses.table.description")}<span className="resize-handle"/></th>
                    <th>{t("admin.houses.table.created_at")}<span className="resize-handle"/></th>
                    <th>{t("admin.houses.table.updated_at")} <span className="resize-handle"/></th>
                    <th>{t("admin.houses.table.edit")}<span className="resize-handle"/></th>
                    <th>{t("admin.houses.table.show")}<span className="resize-handle"/></th>
                </tr>
                </thead>
                <tbody>
                {
                    houses.map((house, index) => <HouseTableRow key={index} house = {house} />)
                }
                </tbody>
            </table>
        </div>
    )
}

export default HouseTable;