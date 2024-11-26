.class Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3$1;
.super Ljava/lang/Object;
.source "PreferenceSubSettingsManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3$1;->this$1:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3$1;->this$1:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3;

    .line 140
    iget-object p1, p1, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3;->val$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 141
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const-string p2, "done_first_time"

    const/4 v0, 0x1

    .line 142
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :try_start_0
    iget-object p2, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3$1;->this$1:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3;

    .line 144
    iget-object p2, p2, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3;->this$0:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;

    invoke-virtual {p2}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object v0, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3$1;->this$1:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3;

    iget-object v0, v0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3;->this$0:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;

    invoke-virtual {v0}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 145
    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string v0, "latest_version"

    .line 146
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 151
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 153
    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3$1;->this$1:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3;

    .line 154
    iget-object p1, p1, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager$3;->this$0:Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/PreferenceSubSettingsManager;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lnet/sourceforge/opencamera/MainActivity;

    .line 155
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->setDeviceDefaults()V

    .line 158
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->restartOpenCamera()V

    return-void
.end method
