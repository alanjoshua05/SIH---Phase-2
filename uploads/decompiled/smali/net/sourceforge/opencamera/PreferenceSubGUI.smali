.class public Lnet/sourceforge/opencamera/PreferenceSubGUI;
.super Lnet/sourceforge/opencamera/PreferenceSubScreen;
.source "PreferenceSubGUI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceSubGUI"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lnet/sourceforge/opencamera/PreferenceSubScreen;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 18
    invoke-super {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubScreen;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130002

    .line 19
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubGUI;->addPreferencesFromResource(I)V

    .line 21
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/PreferenceSubGUI;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 23
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/PreferenceSubGUI;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "camera_open"

    .line 25
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "supports_face_detection"

    .line 29
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "supports_flash"

    .line 33
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "supports_preview_bitmaps"

    .line 37
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "supports_auto_stabilise"

    .line 41
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "supports_raw"

    .line 45
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "supports_white_balance_lock"

    .line 49
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "supports_exposure_lock"

    .line 53
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "is_multi_cam"

    .line 57
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x13

    const-string v11, "preferences_root"

    if-ge v9, v10, :cond_0

    const-string v9, "preference_immersive_mode"

    .line 63
    invoke-virtual {p0, v9}, Lnet/sourceforge/opencamera/PreferenceSubGUI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 65
    invoke-virtual {p0, v11}, Lnet/sourceforge/opencamera/PreferenceSubGUI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceGroup;

    .line 66
    invoke-virtual {v10, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    if-nez v2, :cond_2

    if-nez v1, :cond_1

    const-string v1, "preference_face_detection"

    const/4 v2, 0x0

    .line 69
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "preference_show_face_detection"

    .line 74
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubGUI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 76
    invoke-virtual {p0, v11}, Lnet/sourceforge/opencamera/PreferenceSubGUI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 77
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    if-nez v3, :cond_3

    const-string v0, "preference_show_cycle_flash"

    .line 81
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubGUI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 83
    invoke-virtual {p0, v11}, Lnet/sourceforge/opencamera/PreferenceSubGUI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 84
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    if-nez v4, :cond_4

    const-string v0, "preference_show_focus_peaking"

    .line 88
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubGUI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 90
    invoke-virtual {p0, v11}, Lnet/sourceforge/opencamera/PreferenceSubGUI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 91
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    if-nez v5, :cond_5

    const-string v0, "preference_show_auto_level"

    .line 95
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubGUI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 97
    invoke-virtual {p0, v11}, Lnet/sourceforge/opencamera/PreferenceSubGUI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 98
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    if-nez v6, :cond_6

    const-string v0, "preference_show_cycle_raw"

    .line 102
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubGUI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 104
    invoke-virtual {p0, v11}, Lnet/sourceforge/opencamera/PreferenceSubGUI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 105
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    if-nez v7, :cond_7

    const-string v0, "preference_show_white_balance_lock"

    .line 109
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubGUI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 111
    invoke-virtual {p0, v11}, Lnet/sourceforge/opencamera/PreferenceSubGUI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 112
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    if-nez v8, :cond_8

    const-string v0, "preference_show_exposure_lock"

    .line 116
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubGUI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 118
    invoke-virtual {p0, v11}, Lnet/sourceforge/opencamera/PreferenceSubGUI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 119
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    if-nez p1, :cond_9

    const-string p1, "preference_multi_cam_button"

    .line 123
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubGUI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 125
    invoke-virtual {p0, v11}, Lnet/sourceforge/opencamera/PreferenceSubGUI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 126
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    return-void
.end method
