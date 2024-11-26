.class Lnet/sourceforge/opencamera/MainActivity$PausePreviewOnBackPressedCallback;
.super Landroidx/activity/OnBackPressedCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PausePreviewOnBackPressedCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/MainActivity;


# direct methods
.method public constructor <init>(Lnet/sourceforge/opencamera/MainActivity;Z)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$PausePreviewOnBackPressedCallback;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 3475
    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$PausePreviewOnBackPressedCallback;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 3483
    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$PausePreviewOnBackPressedCallback;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->isPreviewPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$PausePreviewOnBackPressedCallback;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 3487
    invoke-static {v0}, Lnet/sourceforge/opencamera/MainActivity;->access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->startCameraPreview()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3493
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/MainActivity$PausePreviewOnBackPressedCallback;->setEnabled(Z)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$PausePreviewOnBackPressedCallback;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 3494
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->onBackPressed()V

    :goto_0
    return-void
.end method
