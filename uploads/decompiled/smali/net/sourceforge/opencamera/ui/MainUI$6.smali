.class Lnet/sourceforge/opencamera/ui/MainUI$6;
.super Ljava/lang/Object;
.source "MainUI.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ui/MainUI;->togglePopupSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/ui/MainUI;

.field final synthetic val$popup_container:Landroid/view/ViewGroup;

.field final synthetic val$time_s:J


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/MainUI;JLandroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/MainUI$6;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    iput-wide p2, p0, Lnet/sourceforge/opencamera/ui/MainUI$6;->val$time_s:J

    iput-object p4, p0, Lnet/sourceforge/opencamera/ui/MainUI$6;->val$popup_container:Landroid/view/ViewGroup;

    .line 2661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 14

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI$6;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    const/4 v1, 0x1

    .line 2668
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ui/MainUI;->access$400(Lnet/sourceforge/opencamera/ui/MainUI;Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI$6;->val$popup_container:Landroid/view/ViewGroup;

    .line 2673
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI$6;->val$popup_container:Landroid/view/ViewGroup;

    .line 2676
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI$6;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2679
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->access$500(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;

    move-result-object v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/MainUI$6;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2680
    invoke-static {v2}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getSystemOrientation()Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    move-result-object v2

    .line 2683
    sget-object v3, Lnet/sourceforge/opencamera/ui/MainUI$9;->$SwitchMap$net$sourceforge$opencamera$ui$MainUI$UIPlacement:[I

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/MainUI$UIPlacement;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 2714
    sget-object v0, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->PORTRAIT:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-ne v2, v0, :cond_2

    :cond_1
    :goto_1
    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_3

    .line 2718
    :cond_2
    sget-object v0, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->REVERSE_LANDSCAPE:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-ne v2, v0, :cond_3

    goto :goto_2

    :cond_3
    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_5

    .line 2700
    :cond_4
    sget-object v0, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->PORTRAIT:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-ne v2, v0, :cond_5

    goto :goto_2

    .line 2704
    :cond_5
    sget-object v0, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->REVERSE_LANDSCAPE:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-ne v2, v0, :cond_1

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/MainUI$6;->this$0:Lnet/sourceforge/opencamera/ui/MainUI;

    .line 2685
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/MainUI;->access$100(Lnet/sourceforge/opencamera/ui/MainUI;)Lnet/sourceforge/opencamera/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getUIRotation()I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_7

    :goto_2
    const/4 v11, 0x0

    :goto_3
    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_6

    .line 2690
    :cond_7
    sget-object v0, Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;->REVERSE_LANDSCAPE:Lnet/sourceforge/opencamera/MainActivity$SystemOrientation;

    if-ne v2, v0, :cond_8

    goto :goto_1

    :cond_8
    :goto_4
    const/4 v11, 0x0

    :goto_5
    const/4 v13, 0x0

    .line 2728
    :goto_6
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v12, 0x1

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0x64

    .line 2729
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/MainUI$6;->val$popup_container:Landroid/view/ViewGroup;

    .line 2730
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
