.class Lnet/sourceforge/opencamera/ui/PopupView$5;
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

.field final synthetic val$nr_mode_values:[Ljava/lang/String;

.field final synthetic val$preview:Lnet/sourceforge/opencamera/preview/Preview;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/PopupView;[Ljava/lang/String;Lnet/sourceforge/opencamera/MainActivity;Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$5;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ui/PopupView$5;->val$nr_mode_values:[Ljava/lang/String;

    iput-object p3, p0, Lnet/sourceforge/opencamera/ui/PopupView$5;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    iput-object p4, p0, Lnet/sourceforge/opencamera/ui/PopupView$5;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    const/4 p1, 0x0

    .line 311
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/ui/PopupView$ArrayOptionsPopupListener;-><init>(Lnet/sourceforge/opencamera/ui/PopupView$1;)V

    return-void
.end method

.method private update()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$5;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 313
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$200(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$5;->val$nr_mode_values:[Ljava/lang/String;

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$5;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 315
    invoke-static {v1}, Lnet/sourceforge/opencamera/ui/PopupView;->access$200(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/PopupView$5;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 316
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 317
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/PopupView$5;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 319
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/sourceforge/opencamera/MyApplicationInterface;->setNRMode(Ljava/lang/String;)V

    .line 320
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$5;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 321
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$5;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 322
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/preview/Preview;->setupBurstMode()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onClickNext()I
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$5;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 336
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$200(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$5;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$200(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/PopupView$5;->val$nr_mode_values:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$5;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 337
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$208(Lnet/sourceforge/opencamera/ui/PopupView;)I

    .line 338
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/PopupView$5;->update()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$5;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 339
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$200(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public onClickPrev()I
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$5;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 327
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$200(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$5;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$200(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$5;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 328
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$210(Lnet/sourceforge/opencamera/ui/PopupView;)I

    .line 329
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/PopupView$5;->update()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/PopupView$5;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    .line 330
    invoke-static {v0}, Lnet/sourceforge/opencamera/ui/PopupView;->access$200(Lnet/sourceforge/opencamera/ui/PopupView;)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method
