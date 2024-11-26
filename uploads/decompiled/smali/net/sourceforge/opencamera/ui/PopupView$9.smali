.class Lnet/sourceforge/opencamera/ui/PopupView$9;
.super Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;
.source "PopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ui/PopupView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/ui/PopupView;

.field final synthetic val$apertures:Ljava/util/List;

.field final synthetic val$apertures_strings:Ljava/util/List;

.field final synthetic val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

.field final synthetic val$preview:Lnet/sourceforge/opencamera/preview/Preview;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/PopupView;Ljava/util/List;Ljava/util/List;Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$9;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ui/PopupView$9;->val$apertures_strings:Ljava/util/List;

    iput-object p3, p0, Lnet/sourceforge/opencamera/ui/PopupView$9;->val$apertures:Ljava/util/List;

    iput-object p4, p0, Lnet/sourceforge/opencamera/ui/PopupView$9;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    iput-object p5, p0, Lnet/sourceforge/opencamera/ui/PopupView$9;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 570
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/PopupView$ButtonOptionsPopupListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$9;->val$apertures_strings:Ljava/util/List;

    .line 575
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$9;->val$apertures:Ljava/util/List;

    .line 577
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$9;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/sourceforge/opencamera/ui/PopupView$9;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    invoke-virtual {v3}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;Ljava/lang/String;Z)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$9;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 581
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object p1

    invoke-virtual {p1, v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->setAperture(F)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$9;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 582
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$9;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 583
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setAperture(F)V

    goto :goto_0

    .line 587
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown aperture: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PopupView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$9;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 589
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->destroyPopup()V

    return-void
.end method
