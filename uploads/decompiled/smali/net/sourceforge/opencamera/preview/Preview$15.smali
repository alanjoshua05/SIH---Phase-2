.class Lnet/sourceforge/opencamera/preview/Preview$15;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview;->takePhoto(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/preview/Preview;

.field final synthetic val$continuous_fast_burst:Z


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$15;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    iput-boolean p2, p0, Lnet/sourceforge/opencamera/preview/Preview$15;->val$continuous_fast_burst:Z

    .line 6291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(Z)V
    .locals 1

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$15;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6296
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$4300(Lnet/sourceforge/opencamera/preview/Preview;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$15;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6297
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$4400(Lnet/sourceforge/opencamera/preview/Preview;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$15;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/preview/Preview$15;->val$continuous_fast_burst:Z

    .line 6298
    invoke-static {p1, v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$4200(Lnet/sourceforge/opencamera/preview/Preview;Z)V

    return-void
.end method
