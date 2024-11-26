.class Lnet/sourceforge/opencamera/ui/PopupView$24;
.super Ljava/lang/Object;
.source "PopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ui/PopupView;->addArrayOptionsToPopup(Ljava/util/List;Ljava/lang/String;ZZIZLjava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/ui/PopupView;

.field final synthetic val$cyclic:Z

.field final synthetic val$listener:Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;

.field final synthetic val$next_button:Landroid/widget/Button;

.field final synthetic val$prev_button:Landroid/widget/Button;

.field final synthetic val$supported_options:Ljava/util/List;

.field final synthetic val$text_view:Landroid/widget/TextView;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$title_in_options:Z

.field final synthetic val$title_in_options_first_only:Z


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/PopupView;Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;Ljava/util/List;Ljava/lang/String;Landroid/widget/TextView;ZZLandroid/widget/Button;ZLandroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$24;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ui/PopupView$24;->val$listener:Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;

    iput-object p3, p0, Lnet/sourceforge/opencamera/ui/PopupView$24;->val$supported_options:Ljava/util/List;

    iput-object p4, p0, Lnet/sourceforge/opencamera/ui/PopupView$24;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lnet/sourceforge/opencamera/ui/PopupView$24;->val$text_view:Landroid/widget/TextView;

    iput-boolean p6, p0, Lnet/sourceforge/opencamera/ui/PopupView$24;->val$title_in_options:Z

    iput-boolean p7, p0, Lnet/sourceforge/opencamera/ui/PopupView$24;->val$title_in_options_first_only:Z

    iput-object p8, p0, Lnet/sourceforge/opencamera/ui/PopupView$24;->val$prev_button:Landroid/widget/Button;

    iput-boolean p9, p0, Lnet/sourceforge/opencamera/ui/PopupView$24;->val$cyclic:Z

    iput-object p10, p0, Lnet/sourceforge/opencamera/ui/PopupView$24;->val$next_button:Landroid/widget/Button;

    .line 1851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$24;->val$listener:Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;

    .line 1854
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;->onClickPrev()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$24;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$24;->val$supported_options:Ljava/util/List;

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/PopupView$24;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lnet/sourceforge/opencamera/ui/PopupView$24;->val$text_view:Landroid/widget/TextView;

    iget-boolean v4, p0, Lnet/sourceforge/opencamera/ui/PopupView$24;->val$title_in_options:Z

    iget-boolean v5, p0, Lnet/sourceforge/opencamera/ui/PopupView$24;->val$title_in_options_first_only:Z

    move v6, p1

    .line 1856
    invoke-static/range {v0 .. v6}, Lnet/sourceforge/opencamera/ui/PopupView;->access$1200(Lnet/sourceforge/opencamera/ui/PopupView;Ljava/util/List;Ljava/lang/String;Landroid/widget/TextView;ZZI)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$24;->val$prev_button:Landroid/widget/Button;

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$24;->val$cyclic:Z

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v1, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 1857
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$24;->val$next_button:Landroid/widget/Button;

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$24;->val$cyclic:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$24;->val$supported_options:Ljava/util/List;

    .line 1858
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_3

    :cond_2
    const/4 v2, 0x0

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    return-void
.end method
