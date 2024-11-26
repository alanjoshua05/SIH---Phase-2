.class Lnet/sourceforge/opencamera/ui/PopupView$19;
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

.field final synthetic val$preview:Lnet/sourceforge/opencamera/preview/Preview;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/PopupView;Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$19;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ui/PopupView$19;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    const/4 p1, 0x0

    .line 1076
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;-><init>(Lnet/sourceforge/opencamera/ui/PopupView$1;)V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$19;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1079
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$19;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1080
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setColorEffect(Ljava/lang/String;)Lnet/sourceforge/opencamera/cameracontroller/CameraController$SupportedValues;

    :cond_0
    return-void
.end method
