.class Lnet/sourceforge/opencamera/MainActivity$13;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity;->longClickedSwitchMultiCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/MainActivity;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$13;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 2478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$13;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 2483
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraControllerManager()Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraControllerManager;->getNumberOfCameras()I

    move-result p1

    if-ltz p2, :cond_1

    if-ge p2, p1, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$13;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 2485
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->isOpeningCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$13;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 2490
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->closePopup()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$13;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 2491
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->canSwitchCamera()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$13;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 2492
    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/MainActivity;->access$1100(Lnet/sourceforge/opencamera/MainActivity;I)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$13;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 2493
    invoke-static {p1, p2}, Lnet/sourceforge/opencamera/MainActivity;->access$1200(Lnet/sourceforge/opencamera/MainActivity;I)V

    :cond_1
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$13;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 2496
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->setWindowFlagsForCamera()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$13;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    const/4 p2, 0x1

    .line 2497
    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/MainActivity;->showPreview(Z)V

    return-void
.end method
