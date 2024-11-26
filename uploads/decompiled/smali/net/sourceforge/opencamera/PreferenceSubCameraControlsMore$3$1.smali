.class Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3$1;
.super Ljava/lang/Object;
.source "PreferenceSubCameraControlsMore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3$1;->this$1:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3$1;->this$1:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;

    .line 167
    iget-object p1, p1, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;->this$0:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lnet/sourceforge/opencamera/MainActivity;

    .line 168
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sourceforge/opencamera/preview/Preview;->hasLevelAngleStable()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 169
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sourceforge/opencamera/preview/Preview;->getLevelAngleUncalibrated()D

    move-result-wide v0

    iget-object p2, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3$1;->this$1:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;

    .line 170
    iget-object p2, p2, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;->val$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v2, "preference_calibrate_level_angle"

    double-to-float v0, v0

    .line 171
    invoke-interface {p2, v2, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 173
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sourceforge/opencamera/preview/Preview;->updateLevelAngles()V

    const p2, 0x7f100137

    const/4 v0, 0x0

    .line 174
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
