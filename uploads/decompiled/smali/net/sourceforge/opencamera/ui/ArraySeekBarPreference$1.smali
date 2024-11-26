.class Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference$1;
.super Ljava/lang/Object;
.source "ArraySeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference$1;->this$0:Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference$1;->this$0:Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;

    .line 83
    invoke-static {p1}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->access$000(Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;)[Ljava/lang/CharSequence;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference$1;->this$0:Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;

    .line 84
    invoke-static {p2}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->access$100(Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
