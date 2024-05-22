## Lecture 0 Introduction

### SAR Imaging Geodesy 

![image-20240522172347077](E:\05_MyCode\Note\Peking university\pic\image-20240522172347077.png)

## Lecture 1 SAR Satellite

![image-20240522172459737](E:\05_MyCode\Note\Peking university\pic\image-20240522172459737.png)



![image-20240522172520884](E:\05_MyCode\Note\Peking university\pic\image-20240522172520884.png)



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
  - ![image-20240522174021585](E:\05_MyCode\Note\Peking university\pic\image-20240522174021585.png)
  - 
  - ![image-20240522174157869](E:\05_MyCode\Note\Peking university\pic\image-20240522174157869.png)
  - 
- **Imaging Radar-Real Aperture**
  - ![image-20240522174255137](E:\05_MyCode\Note\Peking university\pic\image-20240522174255137.png)
  - 
- **Imaging Radar - Synthetic Aperture**
  - ![image-20240522174330136](E:\05_MyCode\Note\Peking university\pic\image-20240522174330136.png)
  - ![image-20240522174431527](E:\05_MyCode\Note\Peking university\pic\image-20240522174431527.png)
  - 

![image-20240522174527052](E:\05_MyCode\Note\Peking university\pic\image-20240522174527052.png)



## Lecture 3 SAR Amplitude

<img src="E:\05_MyCode\Note\Peking university\pic\image-20240522193235783.png" alt="image-20240522193235783" style="zoom:67%;" />

- **Data Storage**

  - BSQ
  - BIL
  - BIP

- Increasing radiometric resolution = higher number of digital values

  Higher radiometric resolution = finer gradation

- 方位向距离向坐标系

  ![image-20240522194209279](E:\05_MyCode\Note\Peking university\pic\image-20240522194209279.png)

  

  

- 地形畸变

![image-20240522194341909](E:\05_MyCode\Note\Peking university\pic\image-20240522194341909.png)



![image-20240522194554843](E:\05_MyCode\Note\Peking university\pic\image-20240522194554843.png)



- 介电属性、极化特征与地物的关系

![image-20240522200818226](E:\05_MyCode\Note\Peking university\pic\image-20240522200818226.png)

## SAR Geometory

- 理解成像几何（升轨）

![image-20240522211641717](E:\05_MyCode\Note\Peking university\pic\image-20240522211641717.png)

- 理解成像几何（降轨）

![image-20240522211716938](E:\05_MyCode\Note\Peking university\pic\image-20240522211716938.png)



