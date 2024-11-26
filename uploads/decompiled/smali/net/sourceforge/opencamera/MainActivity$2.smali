.class Lnet/sourceforge/opencamera/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$2;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$2;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 506
    invoke-static {p1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Lnet/sourceforge/opencamera/MainActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 507
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iget-object p2, p0, Lnet/sourceforge/opencamera/MainActivity$2;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 508
    invoke-virtual {p2}, Lnet/sourceforge/opencamera/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    .line 509
    invoke-virtual {p2, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 523
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget-object p3, p0, Lnet/sourceforge/opencamera/MainActivity$2;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    invoke-static {p3}, Lnet/sourceforge/opencamera/MainActivity;->access$000(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object p3

    iget p3, p3, Lnet/sourceforge/opencamera/ui/MainUI;->layoutUI_display_w:I

    if-ne p2, p3, :cond_0

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lnet/sourceforge/opencamera/MainActivity$2;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    invoke-static {p2}, Lnet/sourceforge/opencamera/MainActivity;->access$000(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object p2

    iget p2, p2, Lnet/sourceforge/opencamera/ui/MainUI;->layoutUI_display_h:I

    if-eq p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$2;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 526
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$000(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->layoutUI()V

    :cond_1
    return-void
.end method
