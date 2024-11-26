.class Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$3;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->reportFaces([Lnet/sourceforge/opencamera/cameracontroller/CameraController$Face;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;

.field final synthetic val$string_f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$3;->this$1:Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;

    iput-object p2, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$3;->val$string_f:Ljava/lang/String;

    .line 2606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$3;->this$1:Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;

    .line 2612
    iget-object v0, v0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/preview/Preview$1MyFaceDetectionListener$3;->val$string_f:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
