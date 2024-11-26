.class Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraController2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/cameracontroller/CameraController2;-><init>(Landroid/content/Context;ILnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;Lnet/sourceforge/opencamera/cameracontroller/CameraController$ErrorCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyStateCallback"
.end annotation


# instance fields
.field callback_done:Z

.field first_callback:Z

.field final synthetic this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

.field final synthetic val$manager:Landroid/hardware/camera2/CameraManager;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CameraManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    iput-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->val$manager:Landroid/hardware/camera2/CameraManager;

    .line 2074
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->first_callback:Z

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    iget-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->first_callback:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->first_callback:Z

    :cond_0
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->first_callback:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->first_callback:Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    const/4 v1, 0x0

    .line 2169
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 2172
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraDevice;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 2177
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$5400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->callback_done:Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 2181
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$5400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2184
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3

    const-string v0, "CameraController2"

    .line 2191
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "camera error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->first_callback:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->first_callback:Z

    :cond_0
    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 2200
    invoke-static {p2, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$5500(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CameraDevice;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 2203
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$5400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 p2, 0x1

    :try_start_0
    iput-boolean p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->callback_done:Z

    iget-object p2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 2207
    invoke-static {p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$5400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 2210
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 5

    const-string v0, "unknown camera_facing: "

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->first_callback:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->first_callback:Z

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    iget-object v3, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->val$manager:Landroid/hardware/camera2/CameraManager;

    .line 2090
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$402(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 2094
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$10()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$5002(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;I)I

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 2096
    invoke-static {v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$11()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    if-eq v2, v1, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const-string v2, "CameraController2"

    .line 2107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m$11()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v4

    invoke-static {v0, v4}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 2108
    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_UNKNOWN:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$5102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 2104
    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_EXTERNAL:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$5102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 2101
    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_BACK:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$5102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 2098
    sget-object v2, Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;->FACING_FRONT:Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$5102(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$Facing;

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    iget-object v2, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->val$manager:Landroid/hardware/camera2/CameraManager;

    .line 2118
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$4900(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$$ExternalSyntheticApiModelOutline2;->m(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$5202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CameraExtensionCharacteristics;)Landroid/hardware/camera2/CameraExtensionCharacteristics;

    :cond_3
    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 2123
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$1202(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 2126
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$5300(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2134
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/camera2/CameraAccessException;)V

    :goto_1
    iget-object p1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 2140
    invoke-static {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$5400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    iput-boolean v1, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->callback_done:Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/cameracontroller/CameraController2$1MyStateCallback;->this$0:Lnet/sourceforge/opencamera/cameracontroller/CameraController2;

    .line 2144
    invoke-static {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController2;->access$5400(Lnet/sourceforge/opencamera/cameracontroller/CameraController2;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2147
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_2
    return-void
.end method
