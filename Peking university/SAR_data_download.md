## SAR data download

ASF [https://vertex.daac.asf.alaska.edu](https://vertex.daac.asf.alaska.edu/)

Sentinel Copernicus Open Access Hub [https://scihub.copernicus.eu/dhus/#/home](https://scihub.copernicus.eu/dhus/)

Sentinel POD Precise Orbit Ephemerides https://s1qc.asf.alaska.edu/aux_poeorb/



ALOS2 PASCO Corporation [http://en.alos-pasco.com](http://en.alos-pasco.com/)

ALOS2 data download (requires account) https://auig2.jaxa.jp/ips/home



TerraSAR-X Airbus [https://terrasar-x-archive.terrasar.com](https://terrasar-x-archive.terrasar.com/)

UAVSAR [https://uavsar.jpl.nasa.gov](https://uavsar.jpl.nasa.gov/)



## DEM

- Statewide/Worldwide DEM sources 

​	 SRTM DEM https://dwtkns.com/srtm/

​	ASTER GDEM https://asterweb.jpl.nasa.gov/gdem.asp

​	USGS NED https://lta.cr.usgs.gov/NED

​	TanDEM DEM https://download.geoservice.dlr.de/TDM90/



- High-resolution LiDAR DEM

​	Washington DNR, LiDAR DEM in Washington [http://lidarportal.dnr.wa.gov](http://lidarportal.dnr.wa.gov/)

​	PSLC, LiDAR DEM over the Pacific Northwest

​	http://pugetsoundlidar.ess.washington.edu/lidardata/index.html

​	Open topography (NCALM collected LiDAR will be archived there) [https://opentopography.org](https://opentopography.org/)



## SAR Processor

- Doris

  - The C++ source code can be downloaded freely

  - Can start from single Look complex data, not level 0 raw data

  - Support data from satellites ERS, ENVISAT, JERS, and RADARSAT

  - New release (2017) https://github.com/TUDelftGeodesy/Doris/releases

- Gamma

- InSAR Scientific Computing Environment (ISCE)

  - ISCE developer team comes from JPL. It is a replacement of ROI_PAC.
  - ISCE is a mix of Python / C / C++ / Fortran routines. 

- GMTSAR

​		**Generate DEM files (SRTM and ASTER options) for use with GMTSAR**

- Stanford Method for Persistent Scatterers (StaMPS)
  - StaMPS can be considered as a post processor for time series analysis in MATLAB. It has interface to the interferograms from different software.
- GIAnT Generic InSAR Analysis Toolbox http://earthdef.caltech.edu/projects/giant/wiki
  - GIAnT is a suite of Python libraries and scripts that implement various published time-series InSAR algorithms in a common framework, integrated with StaMPS
- LicSBAS  https://github.com/yumorishita/LiCSBAS
  - LiCSBAS is an open-source package in Python and bash to carry out InSAR time series analysis using unwrapped interferograms and coherence maps (can be downloaded from LiCSAR products).