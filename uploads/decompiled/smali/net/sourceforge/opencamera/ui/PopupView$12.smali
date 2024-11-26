.class Lnet/sourceforge/opencamera/ui/PopupView$12;
.super Ljava/lang/Object;
.source "PopupView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$preview:Lnet/sourceforge/opencamera/preview/Preview;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/ui/PopupView;Lnet/sourceforge/opencamera/MainActivity;Lnet/sourceforge/opencamera/preview/Preview;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$12;->this$0:Lnet/sourceforge/opencamera/ui/PopupView;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ui/PopupView$12;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    iput-object p3, p0, Lnet/sourceforge/opencamera/ui/PopupView$12;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$12;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 755
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 756
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "preference_focus_bracketing_add_infinity"

    .line 757
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 758
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$12;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 759
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/PopupView$12;->val$preview:Lnet/sourceforge/opencamera/preview/Preview;

    .line 760
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/preview/Preview;->getCameraController()Lnet/sourceforge/opencamera/cameracontroller/CameraController;

    move-result-object p1

    iget-object p2, p0, Lnet/sourceforge/opencamera/ui/PopupView$12;->val$main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {p2}, Lnet/sourceforge/opencamera/MainActivity;->getApplicationInterface()Lnet/sourceforge/opencamera/MyApplicationInterface;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sourceforge/opencamera/MyApplicationInterface;->getFocusBracketingAddInfinityPref()Z

    move-result p2

    invoke-virtual {p1, p2}, Lnet/sourceforge/opencamera/cameracontroller/CameraController;->setFocusBracketingAddInfinity(Z)V

    :cond_0
    return-void
.end method
