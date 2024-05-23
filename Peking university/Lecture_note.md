## Lecture 0 Introduction

### SAR Imaging Geodesy 

![image-20240522172347077](./pic/image-20240522172347077.png)





## Lecture 1 SAR Satellite

![image-20240522172459737](./pic/image-20240522172459737.png)



![image-20240522172520884](./pic/image-20240522172520884.png)

- SAR数据下载及SAR数据处理软件总结在SAR_data_download.md中

## Lecture 2 SAR Imaging principles

- Electromagnetic radiation
- Radar antenna雷达天线
  - Phased array Radar相控阵雷达：
    - 由大量相同的辐射单元组成的雷达面阵，雷达工作时发射机通过馈线网络将功率分配到每个天线单元，通过大量独立的天线单元将能量辐射出去并在空间进行功率合成，形成需要的波束指向。
  - Radar antenna beamwidth波束宽度：
    - 天线图案中**发射大部分辐射功率**的角度范围被定义为 “波束宽度”。1.67°
      **主瓣的波束宽度**是场强与最大场强相比下降 3 dB 的点，即**半功率宽度**。
- Radar wave雷达波
  - 波长
  - 频率
  - 极化
  - 多普勒频移
- 成像雷达
  - 幅度：目标反射率大小
  - 相位：传感器到目标的距离记录
  - ![image-20240522174021585](./pic/image-20240522174021585.png)
  - ![image-20240522174157869](./pic/image-20240522174157869.png)
  - 
- **Imaging Radar-Real Aperture**
  - ![image-20240522174255137](./pic/image-20240522174255137.png)
  - 
- **Imaging Radar - Synthetic Aperture**
  - ![image-20240522174330136](./pic/image-20240522174330136.png)
  - ![image-20240522174431527](./pic/image-20240522174431527.png)

![image-20240522174527052](./pic/image-20240522174527052.png)



## Lecture 3 SAR Amplitude

<img src="./pic/image-20240522193235783.png" alt="image-20240522193235783" style="zoom:67%;" />

- **Data Storage**

  - BSQ
  - BIL
  - BIP

- Increasing radiometric resolution = higher number of digital values

  Higher radiometric resolution = finer gradation

- 方位向距离向坐标系

  ![image-20240522194209279](./pic/image-20240522194209279.png)

  

  

- 地形畸变

![image-20240522194341909](./pic/image-20240522194341909.png)



![image-20240522194554843](./pic/image-20240522194554843.png)



- 介电属性、极化特征与地物的关系

![image-20240522200818226](./pic/image-20240522200818226.png)

## SAR Geometory

- 理解成像几何（升轨）

![image-20240522211641717](./pic/image-20240522211641717.png)

- 理解成像几何（降轨）

![image-20240522211716938](./pic/image-20240522211716938.png)

![image-20240522213624117](./pic/image-20240522213624117.png)



```
椭球方程
多普勒方程
距离方程
```

![geolocation](./pic/geolocation.png)



- 以《Dome growth at Mount Cleveland, Aleutian Arc,quantiﬁed by time series TerraSAR-X imagery》为例讲解时间序列的火山口变化



## SAR pixel offsets tracking

- Matlab normxcorr2()函数用于特征点检测，用template去检测

cross-correlation

![cross-correlation](./pic/cross-correlation.png)

- Image coregistration
  - 重复轨道的**几何条件**发生变化
  - ![coregistration](./pic/coregistration.png)
- Resampling

![resampling](./pic/resampling.png)

- Calculate offsets using cross-correlation window centered on the detected targets

![detect_points.png](./pic/detect_points.png)

### TerraSAR-X experiments ampcor_demo matlab code

## SAR Interferometry

- InSAR处理流程
  - Coregistration 配准
  - Conjugated multiply of two images 共轭相乘
  - Reference phase removal 去除平地相位（卫星位置和地形因素）轨道和地形DEM数据
  - Phase unwrapping 相位解缠
  - Geocoding地理编码to geo-reference system

![interferograms.png](./pic/interferograms.png)

- Baseline

![baseline](./pic/baseline.png)

- flatten_earth

![flatten_earth.png](./pic/flatten_earth.png)

- topography：长基线导致HOA越小，干涉条纹越密集但是同时需要注意引起的空间失相干影响

![topography.png](./pic/topography.png)

- Multilook多视
  - Single look complex (SLC)->Multilooked interferogram (3-by-3) 对干涉图进行多视可以使干涉图平滑
- Filtering滤波

![insar](./pic/insar.png)

![sar_imaging_geometry.png](./pic/sar_imaging_geometry.png)

One fringe change = half of the wavelength LOS displacement

![conclusion.png](./pic/conclusion.png)

- Errors in interferograms
  - Orbit轨道
  - DEM：As phase errors due to inaccurate DEM is proportional to the perpendicular baseline, multiple interferograms can be used to correct the DEM error.
  - 大气电离层对流层影响



## InSAR coherence

- Coherence

![coherence_definition.png](./pic/coherence_definition.png)

![bias.png](./pic/bias.png)

低频高频的相干性偏差

- 失相干

![de-correlation](./pic/de-correlation.png)

Wang, T., et al., (2010), InSAR coherence-decomposition analysis, *IEEE* *Geosci**. Remote Sens. Lett.*, *7*(1).



## Phase unwrapping

![phase_discontinuities.png](./pic/phase_discontinuities.png)

## Deformation 3D

![SARline-of-sight.png](./pic/SAR_line-of-sight.png)





