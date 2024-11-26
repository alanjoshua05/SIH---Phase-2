.class Lnet/sourceforge/opencamera/MainActivity$35;
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

.field final synthetic val$min_exposure:I


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$35;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    iput p2, p0, Lnet/sourceforge/opencamera/MainActivity$35;->val$min_exposure:I

    .line 5655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MainActivity$35;->this$0:Lnet/sourceforge/opencamera/MainActivity;

    .line 5660
    invoke-static {p1}, Lnet/sourceforge/opencamera/MainActivity;->access$800(Lnet/sourceforge/opencamera/MainActivity;)Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    iget p3, p0, Lnet/sourceforge/opencamera/MainActivity$35;->val$min_exposure:I

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lnet/sourceforge/opencamera/preview/Preview;->setExposure(I)V

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
