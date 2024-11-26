.class Lnet/sourceforge/opencamera/ui/PopupView$23;
.super Ljava/lang/Object;
.source "PopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ui/PopupView;->addRadioOptionsToGroup(Landroid/widget/RadioGroup;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/ui/PopupView;

.field final synthetic val$listener:Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;

.field final synthetic val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

.field final synthetic val$preference_key:Ljava/lang/String;

.field final synthetic val$supported_option_entry:Ljava/lang/String;

.field final synthetic val$supported_option_value:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/PopupView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sourceforge/opencamera/MainActivity;Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$23;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ui/PopupView$23;->val$supported_option_entry:Ljava/lang/String;

    iput-object p3, p0, Lnet/sourceforge/opencamera/ui/PopupView$23;->val$supported_option_value:Ljava/lang/String;

    iput-object p4, p0, Lnet/sourceforge/opencamera/ui/PopupView$23;->val$preference_key:Ljava/lang/String;

    iput-object p5, p0, Lnet/sourceforge/opencamera/ui/PopupView$23;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    iput-object p6, p0, Lnet/sourceforge/opencamera/ui/PopupView$23;->val$listener:Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;

    iput-object p7, p0, Lnet/sourceforge/opencamera/ui/PopupView$23;->val$title:Ljava/lang/String;

    .line 1727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$23;->val$preference_key:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$23;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1735
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1736
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$23;->val$preference_key:Ljava/lang/String;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$23;->val$supported_option_value:Ljava/lang/String;

    .line 1737
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1738
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$23;->val$listener:Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$23;->val$supported_option_value:Ljava/lang/String;

    .line 1742
    invoke-virtual {p1, v0}, Lnet/sourceforge/opencamera/ui/PopupView$RadioOptionsListener;->onClick(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$23;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$23;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$23;->val$supported_option_entry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lnet/sourceforge/opencamera/MainActivity;->updateForSettings(ZLjava/lang/String;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$23;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 1746
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->closePopup()V

    :goto_0
    return-void
.end method
