.class Lnet/sourceforge/opencamera/preview/Preview$20;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/preview/Preview;->autoFocusCompleted(ZZZ)V
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

    iput-object p1, p0, Lnet/sourceforge/opencamera/preview/Preview$20;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$20;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    const/4 v1, 0x0

    .line 6816
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->access$5202(Lnet/sourceforge/opencamera/preview/Preview;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lnet/sourceforge/opencamera/preview/Preview$20;->this$0:Lnet/sourceforge/opencamera/preview/Preview;

    .line 6817
    invoke-static {v0}, Lnet/sourceforge/opencamera/preview/Preview;->access$4900(Lnet/sourceforge/opencamera/preview/Preview;)V

    return-void
.end method
