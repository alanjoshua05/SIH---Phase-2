.class Lnet/sourceforge/opencamera/preview/Preview$5;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Lnet/sourceforge/opencamera/preview/Preview$CloseCameraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview;->reopenCamera()V
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

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$5;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$5;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 1958
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$1600(Lnet/sourceforge/opencamera/preview/Preview;)V

    return-void
.end method
