.class Lnet/sourceforge/opencamera/preview/Preview$19;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Lnet/sourceforge/opencamera/cameracontroller/CameraController$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview;->tryAutoFocus(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/preview/Preview;

.field final synthetic val$manual:Z


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$19;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    iput-boolean p2, p0, Lnet/sourceforge/opencamera/preview/Preview$19;->val$manual:Z

    .line 6700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(Z)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$19;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/preview/Preview$19;->val$manual:Z

    const/4 v2, 0x0

    .line 6705
    invoke-static {v0, v1, p1, v2}, Lnet/sourceforge/opencamera/preview/Preview;->access$5100(Lnet/sourceforge/opencamera/preview/Preview;ZZZ)V

    return-void
.end method
