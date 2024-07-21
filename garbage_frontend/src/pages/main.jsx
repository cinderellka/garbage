import React from 'react';
import {useTranslation} from "react-i18next";

const Main = () => {
    const {t, i18n} = useTranslation();


    const handleOrderClick = () => {
        
        alert('Completed!');
    };

    
    return (
        <div className="App_a">
            <div className="img_wrapper">
                <div className="content_w">
                    <div className="text1">
                        <h2>UtilisationPro</h2>
                        <h5>{t("main.text")}</h5>
                    </div>
                </div>
            </div>


            <div className="waste_info">
            <div className="container">
            <div className="waste_inner">   
            <div className="waste_block">
            <h1 className="waste_title"> {t("main.waste_title")}</h1>
          <p className="waste_text">
          {t("main.waste_text")}
          </p>
        
          </div>
          <img src="https://i.imgur.com/YdWCgnd.png" className="waste_img" alt="Waste"></img>
                        </div>
        </div>
        </div>




        <div className="content_info">
            <div className="container">
            <div className="info_inner">   
            <div className="info_block">
            <h1 className="info_title"> {t("main.info_title")}</h1>
          <p className="info_text">
          {t("main.info_text")}
          </p>
          <button onClick={handleOrderClick} className="order-button">
                            {t("main.orderButton")}
                        </button>
          </div>
          <img src="https://i.imgur.com/5ff0mh0.png" className="waste_img" alt="Waste"></img>
                        </div>
        </div>
        </div>



        <div className="map_info">
            <div className="container">



            <h2 className="map_title">{t("main.map_title_1")}</h2>
      <div className="map_block">
        <div className="map_inner">
        <div className="map_type ">
           <h5 className="map_desc">{t("main.map_desc_1")}</h5> 
        </div>
    
        <ul className="map_list">
        <li className="map_list-item"> <svg id="Travel_Map_Location_Pin_24" width="24" height="24" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <rect width="24" height="24" stroke="none" fill="#000000" opacity="0" />
    <g transform="matrix(1.43 0 0 1.43 12 12)">
      <g>
        <g transform="matrix(1 0 0 1 0 -0.13)">
          <path style={{
            stroke: 'rgb(84,145,245)',
            strokeWidth: 1,
            strokeDasharray: 'none',
            strokeLinecap: 'round',
            strokeDashoffset: 0,
            strokeLinejoin: 'round',
            strokeMiterlimit: 4,
            fill: 'rgb(84,145,245)',
            fillRule: 'nonzero',
            opacity: 1
          }} transform="translate(-7, -6.87)" d="M 7.57758 12.7762 C 8.85289 11.671 11.797 8.7707 11.797 5.54704 C 11.797 2.89771 9.64931 0.750001 6.99998 0.750001 C 4.35065 0.750001 2.20294 2.89771 2.20294 5.54704 C 2.20294 8.7707 5.14706 11.671 6.42237 12.7762 C 6.75753 13.0666 7.24243 13.0666 7.57758 12.7762 Z" />
        </g>
        <g transform="matrix(1 0 0 1 0 -1.73)">
          <path style={{
            stroke: 'rgb(84,145,245)',
            strokeWidth: 1,
            strokeDasharray: 'none',
            strokeLinecap: 'round',
            strokeDashoffset: 0,
            strokeLinejoin: 'round',
            strokeMiterlimit: 4,
            fill: 'rgb(255,255,255)',
            fillRule: 'nonzero',
            opacity: 1
          }} transform="translate(-7, -5.27)" d="M 7 7.23014 C 8.08511 7.23014 8.96477 6.35048 8.96477 5.26536 C 8.96477 4.18024 8.08511 3.30058 7 3.30058 C 5.91488 3.30058 5.03522 4.18024 5.03522 5.26536 C 5.03522 6.35048 5.91488 7.23014 7 7.23014 Z" />
        </g>
      </g>
    </g>
  </svg><span>{t("main.map_item_1")}</span></li>
        <li className="map_list-item"><svg id="Travel_Map_Location_Pin_24" width="24" height="24" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <rect width="24" height="24" stroke="none" fill="#000000" opacity="0" />
    <g transform="matrix(1.43 0 0 1.43 12 12)">
      <g>
        <g transform="matrix(1 0 0 1 0 -0.13)">
          <path style={{
            stroke: 'rgb(255,214,0)',
            strokeWidth: 1,
            strokeDasharray: 'none',
            strokeLinecap: 'round',
            strokeDashoffset: 0,
            strokeLinejoin: 'round',
            strokeMiterlimit: 4,
            fill: 'rgb(255,214,0)',
            fillRule: 'nonzero',
            opacity: 1
          }} transform="translate(-7, -6.87)" d="M 7.57758 12.7762 C 8.85289 11.671 11.797 8.7707 11.797 5.54704 C 11.797 2.89771 9.64931 0.750001 6.99998 0.750001 C 4.35065 0.750001 2.20294 2.89771 2.20294 5.54704 C 2.20294 8.7707 5.14706 11.671 6.42237 12.7762 C 6.75753 13.0666 7.24243 13.0666 7.57758 12.7762 Z" />
        </g>
        <g transform="matrix(1 0 0 1 0 -1.73)">
          <path style={{
            stroke: 'rgb(255,214,0)',
            strokeWidth: 1,
            strokeDasharray: 'none',
            strokeLinecap: 'round',
            strokeDashoffset: 0,
            strokeLinejoin: 'round',
            strokeMiterlimit: 4,
            fill: 'rgb(255,255,255)',
            fillRule: 'nonzero',
            opacity: 1
          }} transform="translate(-7, -5.27)" d="M 7 7.23014 C 8.08511 7.23014 8.96477 6.35048 8.96477 5.26536 C 8.96477 4.18024 8.08511 3.30058 7 3.30058 C 5.91488 3.30058 5.03522 4.18024 5.03522 5.26536 C 5.03522 6.35048 5.91488 7.23014 7 7.23014 Z" />
        </g>
      </g>
    </g>
  </svg><span>{t("main.map_item_2")}</span></li>
        <li className="map_list-item"><svg id="Travel_Map_Location_Pin_24" width="24" height="24" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <rect width="24" height="24" stroke="none" fill="#000000" opacity="0" />
    <g transform="matrix(1.43 0 0 1.43 12 12)">
      <g>
        <g transform="matrix(1 0 0 1 0 -0.13)">
          <path style={{
            stroke: 'rgb(124,179,66)',
            strokeWidth: 1,
            strokeDasharray: 'none',
            strokeLinecap: 'round',
            strokeDashoffset: 0,
            strokeLinejoin: 'round',
            strokeMiterlimit: 4,
            fill: 'rgb(124,179,66)',
            fillRule: 'nonzero',
            opacity: 1
          }} transform="translate(-7, -6.87)" d="M 7.57758 12.7762 C 8.85289 11.671 11.797 8.7707 11.797 5.54704 C 11.797 2.89771 9.64931 0.750001 6.99998 0.750001 C 4.35065 0.750001 2.20294 2.89771 2.20294 5.54704 C 2.20294 8.7707 5.14706 11.671 6.42237 12.7762 C 6.75753 13.0666 7.24243 13.0666 7.57758 12.7762 Z" />
        </g>
        <g transform="matrix(1 0 0 1 0 -1.73)">
          <path style={{
            stroke: 'rgb(124,179,66)',
            strokeWidth: 1,
            strokeDasharray: 'none',
            strokeLinecap: 'round',
            strokeDashoffset: 0,
            strokeLinejoin: 'round',
            strokeMiterlimit: 4,
            fill: 'rgb(255,255,255)',
            fillRule: 'nonzero',
            opacity: 1
          }} transform="translate(-7, -5.27)" d="M 7 7.23014 C 8.08511 7.23014 8.96477 6.35048 8.96477 5.26536 C 8.96477 4.18024 8.08511 3.30058 7 3.30058 C 5.91488 3.30058 5.03522 4.18024 5.03522 5.26536 C 5.03522 6.35048 5.91488 7.23014 7 7.23014 Z" />
        </g>
      </g>
    </g>
  </svg><span>{t("main.map_item_3")}</span></li>
  <li className="map_list-item"><svg id="Travel_Map_Location_Pin_24" width="24" height="24" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <rect width="24" height="24" stroke="none" fill="#000000" opacity="0" />
    <g transform="matrix(1.43 0 0 1.43 12 12)">
      <g>
        <g transform="matrix(1 0 0 1 0 -0.13)">
          <path style={{
            stroke: 'rgb(245,124,0)',
            strokeWidth: 1,
            strokeDasharray: 'none',
            strokeLinecap: 'round',
            strokeDashoffset: 0,
            strokeLinejoin: 'round',
            strokeMiterlimit: 4,
            fill: 'rgb(245,124,0)',
            fillRule: 'nonzero',
            opacity: 1
          }} transform="translate(-7, -6.87)" d="M 7.57758 12.7762 C 8.85289 11.671 11.797 8.7707 11.797 5.54704 C 11.797 2.89771 9.64931 0.750001 6.99998 0.750001 C 4.35065 0.750001 2.20294 2.89771 2.20294 5.54704 C 2.20294 8.7707 5.14706 11.671 6.42237 12.7762 C 6.75753 13.0666 7.24243 13.0666 7.57758 12.7762 Z" />
        </g>
        <g transform="matrix(1 0 0 1 0 -1.73)">
          <path style={{
            stroke: 'rgb(245,124,0)',
            strokeWidth: 1,
            strokeDasharray: 'none',
            strokeLinecap: 'round',
            strokeDashoffset: 0,
            strokeLinejoin: 'round',
            strokeMiterlimit: 4,
            fill: 'rgb(255,255,255)',
            fillRule: 'nonzero',
            opacity: 1
          }} transform="translate(-7, -5.27)" d="M 7 7.23014 C 8.08511 7.23014 8.96477 6.35048 8.96477 5.26536 C 8.96477 4.18024 8.08511 3.30058 7 3.30058 C 5.91488 3.30058 5.03522 4.18024 5.03522 5.26536 C 5.03522 6.35048 5.91488 7.23014 7 7.23014 Z" />
        </g>
      </g>
    </g>
  </svg><span>{t("main.map_item_9")}</span></li>
    </ul>
      
        </div>
   
      <iframe src="https://www.google.com/maps/d/embed?mid=1pK4kgvQlfb1443x7JuzM8zx3ET3U0FU&ehbc=2E312F&noprof=1"
        width="100%"
        height="450"
        style={{ border: 0 }}
      
      ></iframe>
     
      </div>
      
      <h2 className="map_title">{t("main.map_title_2")}</h2> 
      <div className="map_inner ">
     


      <div className="map_type">
           <h3 className="map_desc">{t("main.map_desc_2")}</h3> 
           <ul className="map_list">
        <li className="map_list-item">{t("main.map_item_4")}</li>
        <li className="map_list-item">{t("main.map_item_5")}</li>
        <li className="map_list-item">{t("main.map_item_6")}</li>
        <li className="map_list-item">{t("main.map_item_7")}</li>
        <li className="map_list-item">{t("main.map_item_8")}</li>
    </ul>

        </div> 


        <iframe src="https://www.google.com/maps/d/embed?mid=1hMpTY_pXcj0d-DjyBF-pVQBBLGBfOPE&ehbc=2E312F"
        width="600"
        height="450"
        style={{ border: 0 }}
        allowFullScreen=""
        loading="lazy"
        referrerPolicy="no-referrer-when-downgrade"
      ></iframe>




      </div>

    

        </div>
        </div>



        <div className="list_info">
            <div className="container">
           
            <p className="text_title" >{t("main.text_title")}</p>
  
                     
        </div>
        </div>


        </div>
    )
}

export default Main;