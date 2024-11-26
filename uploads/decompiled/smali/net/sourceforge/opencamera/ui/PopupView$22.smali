.class Lnet/sourceforge/opencamera/ui/PopupView$22;
.super Ljava/lang/Object;
.source "PopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ui/PopupView;->addRadioOptionsToPopup(Landroid/content/SharedPreferences;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private created:Z

.field private opened:Z

.field final synthetic this$0:Lnet/sourceforge/opencamera/ui/PopupView;

.field final synthetic val$current_option_value:Ljava/lang/String;

.field final synthetic val$default_value:Ljava/lang/String;

.field final synthetic val$listener:Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;

.field final synthetic val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

.field final synthetic val$preference_key:Ljava/lang/String;

.field final synthetic val$rg:Landroid/widget/RadioGroup;

.field final synthetic val$sharedPreferences:Landroid/content/SharedPreferences;

.field final synthetic val$supported_options_entries:Ljava/util/List;

.field final synthetic val$supported_options_values:Ljava/util/List;

.field final synthetic val$test_key:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/PopupView;Ljava/lang/String;Landroid/widget/RadioGroup;Lnet/sourceforge/opencamera/MainActivity;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$rg:Landroid/widget/RadioGroup;

    iput-object p4, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    iput-object p5, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p6, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$supported_options_entries:Ljava/util/List;

    iput-object p7, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$supported_options_values:Ljava/util/List;

    iput-object p8, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$preference_key:Ljava/lang/String;

    iput-object p9, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$default_value:Ljava/lang/String;

    iput-object p10, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$current_option_value:Ljava/lang/String;

    iput-object p11, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$test_key:Ljava/lang/String;

    iput-object p12, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$listener:Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;

    .line 1617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->opened:Z

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->created:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    iget-boolean p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->opened:Z

    const/4 v0, 0x1

    const v1, 0x7f0900a8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$rg:Landroid/widget/RadioGroup;

    const/16 v2, 0x8

    .line 1627
    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1628
    invoke-virtual {p1, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    .line 1630
    invoke-virtual {p1}, Landroid/widget/ScrollView;->invalidate()V

    .line 1631
    invoke-virtual {p1}, Landroid/widget/ScrollView;->requestLayout()V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->created:Z

    if-nez p1, :cond_1

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    iget-object v3, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$rg:Landroid/widget/RadioGroup;

    iget-object v4, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$supported_options_entries:Ljava/util/List;

    iget-object v6, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$supported_options_values:Ljava/util/List;

    iget-object v7, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$title:Ljava/lang/String;

    iget-object v8, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$preference_key:Ljava/lang/String;

    iget-object v9, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$default_value:Ljava/lang/String;

    iget-object v10, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$current_option_value:Ljava/lang/String;

    iget-object v11, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$test_key:Ljava/lang/String;

    iget-object v12, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$listener:Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;

    .line 1635
    invoke-static/range {v2 .. v12}, Lnet/sourceforge/opencamera/ui/PopupView;->access$1100(Lnet/sourceforge/opencamera/ui/PopupView;Landroid/widget/RadioGroup;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;)V

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->created:Z

    :cond_1
    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$rg:Landroid/widget/RadioGroup;

    const/4 v2, 0x0

    .line 1638
    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1639
    invoke-virtual {p1, v1}, Lnet/sourceforge/opencamera/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    .line 1640
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lnet/sourceforge/opencamera/ui/PopupView$22$1;

    invoke-direct {v2, p0, p1}, Lnet/sourceforge/opencamera/ui/PopupView$22$1;-><init>(Lnet/sourceforge/opencamera/ui/PopupView$22;Landroid/widget/ScrollView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    iget-boolean p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->opened:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$22;->opened:Z

    return-void
.end method
