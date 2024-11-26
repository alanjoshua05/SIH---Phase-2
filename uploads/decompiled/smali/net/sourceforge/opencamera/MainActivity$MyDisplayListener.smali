.class Lnet/sourceforge/opencamera/MainActivity$MyDisplayListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDisplayListener"
.end annotation


# instance fields
.field private old_rotation:I

.field final synthetic this$0:Lnet/sourceforge/opencamera/MainActivity;


# direct methods
.method private constructor <init>(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$MyDisplayListener;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 1708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1709
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/opencamera/MainActivity$MyDisplayListener;->old_rotation:I

    return-void
.end method

.method synthetic constructor <init>(Lnet/sourceforge/opencamera/MainActivity;Lnet/sourceforge/opencamera/MainActivity$1;)V
    .locals 0

    .line 1705
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/MainActivity$MyDisplayListener;-><init>(Lnet/sourceforge/opencamera/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$MyDisplayListener;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 1727
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x2

    if-nez p1, :cond_0

    iget v1, p0, Lnet/sourceforge/opencamera/MainActivity$MyDisplayListener;->old_rotation:I

    if-eq v1, v0, :cond_3

    :cond_0
    if-ne p1, v0, :cond_1

    iget v0, p0, Lnet/sourceforge/opencamera/MainActivity$MyDisplayListener;->old_rotation:I

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget v2, p0, Lnet/sourceforge/opencamera/MainActivity$MyDisplayListener;->old_rotation:I

    if-eq v2, v0, :cond_3

    :cond_2
    if-ne p1, v0, :cond_4

    iget v0, p0, Lnet/sourceforge/opencamera/MainActivity$MyDisplayListener;->old_rotation:I

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$MyDisplayListener;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 1740
    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$900(Lnet/sourceforge/opencamera/MainActivity;)V

    :cond_4
    iput p1, p0, Lnet/sourceforge/opencamera/MainActivity$MyDisplayListener;->old_rotation:I

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
