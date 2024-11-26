.class Lnet/sourceforge/opencamera/ui/PopupView$22$1;
.super Ljava/lang/Object;
.source "PopupView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ui/PopupView$22;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/ui/PopupView$22;

.field final synthetic val$popup_container:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/PopupView$22;Landroid/widget/ScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$22$1;->this$1:Lnet/sourceforge/opencamera/ui/PopupView$22;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ui/PopupView$22$1;->val$popup_container:Landroid/widget/ScrollView;

    .line 1641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$22$1;->val$popup_container:Landroid/widget/ScrollView;

    .line 1648
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p0}, Lnet/sourceforge/opencamera/ui/MainUI$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$22$1;->val$popup_container:Landroid/widget/ScrollView;

    .line 1651
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$22$1;->this$1:Lnet/sourceforge/opencamera/ui/PopupView$22;

    .line 1655
    iget-object v0, v0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$rg:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$22$1;->this$1:Lnet/sourceforge/opencamera/ui/PopupView$22;

    .line 1656
    iget-object v0, v0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$rg:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$22$1;->this$1:Lnet/sourceforge/opencamera/ui/PopupView$22;

    .line 1657
    iget-object v1, v1, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$rg:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$22$1;->val$popup_container:Landroid/widget/ScrollView;

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/PopupView$22$1;->this$1:Lnet/sourceforge/opencamera/ui/PopupView$22;

    .line 1658
    iget-object v2, v2, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$rg:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    :cond_1
    return-void
.end method
