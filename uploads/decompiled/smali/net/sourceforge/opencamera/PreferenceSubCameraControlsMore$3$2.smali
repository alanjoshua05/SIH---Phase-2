.class Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3$2;
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

    iput-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3$2;->this$1:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3$2;->this$1:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;

    .line 182
    iget-object p1, p1, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;->this$0:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lnet/sourceforge/opencamera/MainActivity;

    iget-object p2, p0, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3$2;->this$1:Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;

    .line 183
    iget-object p2, p2, Lnet/sourceforge/opencamera/PreferenceSubCameraControlsMore$3;->val$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "preference_calibrate_level_angle"

    const/4 v1, 0x0

    .line 184
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 185
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 186
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sourceforge/opencamera/preview/Preview;->updateLevelAngles()V

    const p2, 0x7f100138

    const/4 v0, 0x0

    .line 187
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
