.class Lnet/sourceforge/opencamera/preview/Preview$22$1;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/preview/Preview$22;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/preview/Preview$22;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$22$1;->this$1:Lnet/sourceforge/opencamera/preview/Preview$22;

    .line 7940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$22$1;->this$1:Lnet/sourceforge/opencamera/preview/Preview$22;

    .line 7945
    iget-object v0, v0, Lnet/sourceforge/opencamera/preview/Preview$22;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$5700(Lnet/sourceforge/opencamera/preview/Preview;Z)V

    return-void
.end method
