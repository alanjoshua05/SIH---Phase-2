.class Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;
.super Landroid/os/AsyncTask;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/preview/Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseCameraTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CloseCameraTask"


# instance fields
.field final camera_controller_local:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

.field final closeCameraCallback:Lnet/sourceforge/opencamera/preview/Preview$CloseCameraCallback;

.field reopen:Z

.field final synthetic this$0:Lnet/sourceforge/opencamera/preview/Preview;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/cameracontroller/CameraController;Lnet/sourceforge/opencamera/preview/Preview$CloseCameraCallback;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1347
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;->camera_controller_local:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    iput-object p3, p0, Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;->closeCameraCallback:Lnet/sourceforge/opencamera/preview/Preview$CloseCameraCallback;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1339
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;->camera_controller_local:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 1359
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->stopPreview()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;->camera_controller_local:Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    .line 1363
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->release()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1339
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1375
    sget-object v0, Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;->CAMERAOPENSTATE_CLOSED:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$1402(Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;)Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    const/4 v0, 0x0

    .line 1376
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$1502(Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;)Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;->closeCameraCallback:Lnet/sourceforge/opencamera/preview/Preview$CloseCameraCallback;

    if-eqz p1, :cond_0

    .line 1380
    invoke-interface {p1}, Lnet/sourceforge/opencamera/preview/Preview$CloseCameraCallback;->onClosed()V

    :cond_0
    iget-boolean p1, p0, Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;->reopen:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$CloseCameraTask;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1385
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$1600(Lnet/sourceforge/opencamera/preview/Preview;)V

    :cond_1
    return-void
.end method
