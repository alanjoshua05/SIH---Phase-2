.class Lnet/sourceforge/opencamera/MainActivity$18;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity;->setImmersiveTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/MainActivity;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$18;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 3813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$18;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 3818
    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$2100(Lnet/sourceforge/opencamera/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$18;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->popupIsOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$18;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->usingKitKatImmersiveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$18;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    const/4 v1, 0x1

    .line 3819
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/MainActivity;->setImmersiveMode(Z)V

    :cond_0
    return-void
.end method
