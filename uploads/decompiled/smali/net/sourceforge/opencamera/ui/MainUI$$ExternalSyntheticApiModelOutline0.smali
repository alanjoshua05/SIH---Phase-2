.class public final synthetic Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    check-cast p0, Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/bluetooth/BluetoothGattService;
    .locals 0

    check-cast p0, Landroid/bluetooth/BluetoothGattService;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/bluetooth/BluetoothManager;
    .locals 0

    check-cast p0, Landroid/bluetooth/BluetoothManager;

    return-object p0
.end method

.method public static bridge synthetic m(Lnet/sourceforge/opencamera/MainActivity;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lnet/sourceforge/opencamera/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public static bridge synthetic m()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    return-object v0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/hardware/camera2/CaptureResult;
    .locals 0

    check-cast p0, Landroid/hardware/camera2/CaptureResult;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/hardware/camera2/DngCreator;I)Landroid/hardware/camera2/DngCreator;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/DngCreator;->setOrientation(I)Landroid/hardware/camera2/DngCreator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/hardware/camera2/DngCreator;Landroid/location/Location;)Landroid/hardware/camera2/DngCreator;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/DngCreator;->setLocation(Landroid/location/Location;)Landroid/hardware/camera2/DngCreator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/ImageReader;)Landroid/media/Image;
    .locals 0

    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/media/Image;
    .locals 0

    check-cast p0, Landroid/media/Image;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/util/Size;
    .locals 0

    check-cast p0, Landroid/util/Size;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/util/SizeF;
    .locals 0

    check-cast p0, Landroid/util/SizeF;

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/bluetooth/BluetoothGattCharacteristic;II)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/hardware/camera2/CaptureRequest;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/media/Image$Plane;)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/bluetooth/BluetoothGatt;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/bluetooth/BluetoothGattService;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/util/UUID;
    .locals 0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    return-void
.end method

.method public static bridge synthetic m(Landroid/hardware/camera2/DngCreator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/camera2/DngCreator;->close()V

    return-void
.end method

.method public static bridge synthetic m(Landroid/hardware/camera2/DngCreator;Ljava/io/OutputStream;Landroid/media/Image;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/DngCreator;->writeImage(Ljava/io/OutputStream;Landroid/media/Image;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/Image;)V
    .locals 0

    invoke-virtual {p0}, Landroid/media/Image;->close()V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/MediaRecorder;)V
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->resume()V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/MediaRecorder;Ljava/io/File;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setNextOutputFile(Ljava/io/File;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/MediaRecorder;Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setNextOutputFile(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/widget/SeekBar;Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/bluetooth/BluetoothGattDescriptor;[B)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m()[B
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    return-object v0
.end method

.method public static bridge synthetic m(Landroid/media/Image;)[Landroid/media/Image$Plane;
    .locals 0

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m$1()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public static bridge synthetic m$1()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    return-object v0
.end method

.method public static bridge synthetic m$1(Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->close()V

    return-void
.end method

.method public static bridge synthetic m$1(Landroid/media/MediaRecorder;)V
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->pause()V

    return-void
.end method

.method public static bridge synthetic m$1(Landroid/widget/SeekBar;Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static bridge synthetic m$2()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public static bridge synthetic m$2()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    return-object v0
.end method

.method public static bridge synthetic m$3()Landroid/hardware/camera2/CameraCharacteristics$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-object v0
.end method

.method public static bridge synthetic m$3()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    return-object v0
.end method

.method public static bridge synthetic m$4()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    return-object v0
.end method

.method public static bridge synthetic m$5()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    return-object v0
.end method

.method public static bridge synthetic m$6()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    return-object v0
.end method

.method public static bridge synthetic m$7()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    return-object v0
.end method
