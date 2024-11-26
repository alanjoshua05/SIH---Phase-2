.class Lnet/sourceforge/opencamera/preview/Preview$1;
.super Landroid/os/AsyncTask;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview;->openCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lnet/sourceforge/opencamera/cameracontroller/CameraController;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Preview/openCamera"


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/preview/Preview;

.field final synthetic val$cameraId_f:I


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview;I)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$1;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    iput p2, p0, Lnet/sourceforge/opencamera/preview/Preview$1;->val$cameraId_f:I

    .line 1735
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1735
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview$1;->doInBackground([Ljava/lang/Void;)Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lnet/sourceforge/opencamera/cameracontroller/CameraController;
    .locals 1

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$1;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    iget v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1;->val$cameraId_f:I

    .line 1742
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$1700(Lnet/sourceforge/opencamera/preview/Preview;I)Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 1735
    check-cast p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview$1;->onCancelled(Lnet/sourceforge/opencamera/cameracontroller/CameraController;)V

    return-void
.end method

.method protected onCancelled(Lnet/sourceforge/opencamera/cameracontroller/CameraController;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1770
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->release()V

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$1;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1772
    sget-object v0, Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;->CAMERAOPENSTATE_OPENED:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$1402(Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;)Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$1;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    const/4 v0, 0x0

    .line 1773
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$1902(Lnet/sourceforge/opencamera/preview/Preview;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1735
    check-cast p1, Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/preview/Preview$1;->onPostExecute(Lnet/sourceforge/opencamera/cameracontroller/CameraController;)V

    return-void
.end method

.method protected onPostExecute(Lnet/sourceforge/opencamera/cameracontroller/CameraController;)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1751
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$202(Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/cameracontroller/CameraController;)Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$1;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1752
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$1800(Lnet/sourceforge/opencamera/preview/Preview;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$1;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1755
    sget-object v0, Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;->CAMERAOPENSTATE_OPENED:Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$1402(Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;)Lnet/sourceforge/opencamera/preview/Preview$CameraOpenState;

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$1;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    const/4 v0, 0x0

    .line 1756
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$1902(Lnet/sourceforge/opencamera/preview/Preview;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method
