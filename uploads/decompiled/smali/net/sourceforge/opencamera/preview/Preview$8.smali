.class Lnet/sourceforge/opencamera/preview/Preview$8;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Lnet/sourceforge/opencamera/preview/Preview$CloseCameraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview;->setCamera(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/preview/Preview;

.field final synthetic val$cameraId_f:I


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$8;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    iput p2, p0, Lnet/sourceforge/opencamera/preview/Preview$8;->val$cameraId_f:I

    .line 4565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$8;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 4570
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2000(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    move-result-object v0

    iget v1, p0, Lnet/sourceforge/opencamera/preview/Preview$8;->val$cameraId_f:I

    invoke-interface {v0, v1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->setCameraIdPref(I)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$8;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 4571
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$1600(Lnet/sourceforge/opencamera/preview/Preview;)V

    return-void
.end method
