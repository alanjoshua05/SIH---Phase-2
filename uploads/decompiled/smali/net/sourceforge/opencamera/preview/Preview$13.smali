.class Lnet/sourceforge/opencamera/preview/Preview$13;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview;->startVideoRecording(Z)V
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

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$13;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1

    iget-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$13;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 5831
    invoke-static {p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$2400(Lnet/sourceforge/opencamera/preview/Preview;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 5832
    new-instance v0, Lnet/sourceforge/opencamera/preview/Preview$13$1;

    invoke-direct {v0, p0, p2, p3}, Lnet/sourceforge/opencamera/preview/Preview$13$1;-><init>(Lnet/sourceforge/opencamera/preview/Preview$13;II)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
