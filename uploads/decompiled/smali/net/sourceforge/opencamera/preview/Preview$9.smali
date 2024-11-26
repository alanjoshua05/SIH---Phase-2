.class Lnet/sourceforge/opencamera/preview/Preview$9;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Lnet/sourceforge/opencamera/cameracontroller/CameraController$ContinuousFocusMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview;->setupContinuousFocusMove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/preview/Preview;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$9;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinuousFocusMove(Z)V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$9;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5251
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$3100(Lnet/sourceforge/opencamera/preview/Preview;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$9;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5252
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$3102(Lnet/sourceforge/opencamera/preview/Preview;Z)Z

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$9;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5253
    iget v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->count_cameraContinuousFocusMoving:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lnet/sourceforge/opencamera/preview/Preview;->count_cameraContinuousFocusMoving:I

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$9;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5254
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$2000(Lnet/sourceforge/opencamera/preview/Preview;)Lnet/sourceforge/opencamera/preview/ApplicationInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/sourceforge/opencamera/preview/ApplicationInterface;->onContinuousFocusMove(Z)V

    :cond_0
    return-void
.end method
