在桌面终端中输入以下命令完成相机驱动：
cd camera_ws
source devel/setup.bash
roslaunch usb_cam usb_cam-dual_modal_rectified.launch #开启相机


在终端中输入以下命令查看两个相机的原始图像：
rqt_image_view


在处理器biao_ws/src/biaoding/scripts/路径下打开终端，输入以下命令（需要先启动相机驱动代码）：
python biaoding.py    #会备份这段时间的图像在当前文件夹下
或
python biaoding.py 1  #不会备份这段时间的图像在当前文件夹下


打开一个终端，加载参数文件至ROS参数服务器：
cd dual-modal-perception/ros_ws/src/dual_modal_perception/conf && rosparam load param.yaml

打开一个终端，启动双模态检测算法：
cd dual-modal-perception/ros_ws/src/dual_modal_perception/scripts && python3 demo.py


打开一个终端，启动可见光图像预处理算法：
roslaunch remove_fog image_fog
或
python remove_fog

打开一个终端，启动红外图像预处理算法：
cd image_enhance
source devel/setup.bash
roslaunch image_enhance image_enhance.launch
