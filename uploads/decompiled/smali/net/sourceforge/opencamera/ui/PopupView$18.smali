.class Lnet/sourceforge/opencamera/ui/PopupView$18;
.super Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;
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

.field final synthetic val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

.field final synthetic val$preview:Lnet/sourceforge/opencamera/preview/Preview;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/PopupView;Lnet/sourceforge/opencamera/preview/Preview;Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$18;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ui/PopupView$18;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    iput-object p3, p0, Lnet/sourceforge/opencamera/ui/PopupView$18;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 p1, 0x0

    .line 1048
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;-><init>(Lnet/sourceforge/opencamera/ui/PopupView$1;)V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$18;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1051
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$18;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1052
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->sceneModeAffectsFunctionality()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$18;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1054
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/PopupView$18;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/ui/PopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100331

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/PopupView$18;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getMainUI()Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sourceforge/opencamera/ui/MainUI;->getEntryForSceneMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lnet/sourceforge/opencamera/MainActivity;->updateForSettings(ZLjava/lang/String;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$18;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1055
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->closePopup()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$18;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1058
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setSceneMode(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;

    :cond_1
    :goto_0
    return-void
.end method
