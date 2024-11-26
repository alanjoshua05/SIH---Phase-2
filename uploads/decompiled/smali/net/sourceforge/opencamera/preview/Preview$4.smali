.class Lnet/sourceforge/opencamera/preview/Preview$4;
.super Landroid/view/OrientationEventListener;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview;->cameraOpened()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/preview/Preview;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$4;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1893
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$4;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1896
    invoke-static {v0, p1}, Lnet/sourceforge/opencamera/preview/Preview;->access$2100(Lnet/sourceforge/opencamera/preview/Preview;I)V

    return-void
.end method
