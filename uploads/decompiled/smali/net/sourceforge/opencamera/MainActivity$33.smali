.class Lnet/sourceforge/opencamera/MainActivity$33;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/MainActivity;->cameraSetup()V
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

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$33;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$33;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5599
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    iget-object p3, p0, Lnet/sourceforge/opencamera/MainActivity$33;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    invoke-static {p3}, Lnet/sourceforge/opencamera/MainActivity;->access$3100(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/ui/ManualSeekbars;

    move-result-object p3

    invoke-virtual {p3, p2}, Lnet/sourceforge/opencamera/ui/ManualSeekbars;->getISO(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/preview/Preview;->setISO(I)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$33;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5600
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$000(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/ui/MainUI;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/MainUI;->updateSelectedISOButton()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
