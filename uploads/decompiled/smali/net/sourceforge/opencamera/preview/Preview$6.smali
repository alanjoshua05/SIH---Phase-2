.class Lnet/sourceforge/opencamera/preview/Preview$6;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview;->setupCamera(Z)V
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

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$6;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 2252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$6;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    const/4 v1, 0x0

    .line 2257
    invoke-static {v0, v1, v1, v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$2200(Lnet/sourceforge/opencamera/preview/Preview;ZZZ)V

    return-void
.end method
