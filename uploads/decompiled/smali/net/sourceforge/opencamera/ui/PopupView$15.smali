.class Lnet/sourceforge/opencamera/ui/PopupView$15;
.super Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;
.source "PopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/ui/PopupView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/ui/PopupView;

.field final synthetic val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

.field final synthetic val$repeat_mode_values:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/PopupView;[Ljava/lang/String;Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$15;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ui/PopupView$15;->val$repeat_mode_values:[Ljava/lang/String;

    iput-object p3, p0, Lnet/sourceforge/opencamera/ui/PopupView$15;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 p1, 0x0

    .line 938
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;-><init>(Lnet/sourceforge/opencamera/ui/PopupView$1;)V

    return-void
.end method

.method private update()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$15;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 940
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$800(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$15;->val$repeat_mode_values:[Ljava/lang/String;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$15;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 942
    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/PopupView;->access$800(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$15;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 943
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 944
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preference_burst_mode"

    .line 945
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 946
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public onClickNext()I
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$15;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 959
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$800(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$15;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$800(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/PopupView$15;->val$repeat_mode_values:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$15;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 960
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$808(Lnet/sourceforge/opencamera/ui/PopupView;)I

    .line 961
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/PopupView$15;->update()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$15;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 962
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$800(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public onClickPrev()I
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$15;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 950
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$800(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$15;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$800(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$15;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 951
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$810(Lnet/sourceforge/opencamera/ui/PopupView;)I

    .line 952
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/PopupView$15;->update()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$15;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 953
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$800(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method
