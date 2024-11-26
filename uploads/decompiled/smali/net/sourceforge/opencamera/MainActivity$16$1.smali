.class Lnet/sourceforge/opencamera/MainActivity$16$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity$16;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/MainActivity$16;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity$16;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$16$1;->this$1:Lnet/sourceforge/opencamera/MainActivity$16;

    .line 3691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$16$1;->this$1:Lnet/sourceforge/opencamera/MainActivity$16;

    .line 3696
    iget-object v0, v0, Lnet/sourceforge/opencamera/MainActivity$16;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$1700(Lnet/sourceforge/opencamera/MainActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$16$1;->this$1:Lnet/sourceforge/opencamera/MainActivity$16;

    .line 3699
    iget-object v0, v0, Lnet/sourceforge/opencamera/MainActivity$16;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->access$1900(Lnet/sourceforge/opencamera/MainActivity;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$16$1;->this$1:Lnet/sourceforge/opencamera/MainActivity$16;

    .line 3704
    iget-object v0, v0, Lnet/sourceforge/opencamera/MainActivity$16;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->access$1900(Lnet/sourceforge/opencamera/MainActivity;Z)V

    :goto_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$16$1;->this$1:Lnet/sourceforge/opencamera/MainActivity$16;

    .line 3708
    iget-object v0, v0, Lnet/sourceforge/opencamera/MainActivity$16;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$000(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->layoutUI()V

    return-void
.end method
