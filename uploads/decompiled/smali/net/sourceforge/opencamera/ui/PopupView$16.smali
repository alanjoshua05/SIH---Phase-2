.class Lnet/sourceforge/opencamera/ui/PopupView$16;
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

.field final synthetic val$grid_values:[Ljava/lang/String;

.field final synthetic val$main_activity:Lnet/sourceforge/opencamera/MainActivity;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/PopupView;[Ljava/lang/String;Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$16;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ui/PopupView$16;->val$grid_values:[Ljava/lang/String;

    iput-object p3, p0, Lnet/sourceforge/opencamera/ui/PopupView$16;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    const/4 p1, 0x0

    .line 980
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;-><init>(Lnet/sourceforge/opencamera/ui/PopupView$1;)V

    return-void
.end method

.method private update()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$16;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 982
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$900(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$16;->val$grid_values:[Ljava/lang/String;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$16;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 984
    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/PopupView;->access$900(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$16;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 985
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 986
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preference_grid"

    .line 987
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 988
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$16;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 989
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getDrawPreview()Lnet/sourceforge/opencamera/ui/DrawPreview;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/ui/DrawPreview;->updateSettings()V

    return-void
.end method


# virtual methods
.method public onClickNext()I
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$16;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 1004
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$900(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$16;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 1005
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$908(Lnet/sourceforge/opencamera/ui/PopupView;)I

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$16;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 1006
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$900(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$16;->val$grid_values:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$16;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 1007
    array-length v1, v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ui/PopupView;->access$920(Lnet/sourceforge/opencamera/ui/PopupView;I)I

    .line 1008
    :cond_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/PopupView$16;->update()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$16;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 1009
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$900(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public onClickPrev()I
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$16;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 993
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$900(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$16;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 994
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$910(Lnet/sourceforge/opencamera/ui/PopupView;)I

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$16;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 995
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$900(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$16;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$16;->val$grid_values:[Ljava/lang/String;

    .line 996
    array-length v1, v1

    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ui/PopupView;->access$912(Lnet/sourceforge/opencamera/ui/PopupView;I)I

    .line 997
    :cond_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/PopupView$16;->update()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$16;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 998
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$900(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method
