.class public Lnet/sourceforge/opencamera/PreferenceSubProcessing;
.super Lnet/sourceforge/opencamera/PreferenceSubScreen;
.source "PreferenceSubProcessing.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceSubProcessing"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lnet/sourceforge/opencamera/PreferenceSubScreen;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 19
    invoke-super {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubScreen;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130007

    .line 20
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubProcessing;->addPreferencesFromResource(I)V

    .line 22
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/PreferenceSubProcessing;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 24
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/PreferenceSubProcessing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "camera_open"

    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "antibanding"

    .line 31
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v2, "preferences_root"

    if-eqz v4, :cond_0

    .line 32
    array-length v3, v4

    if-lez v3, :cond_0

    const-string v3, "antibanding_entries"

    .line 33
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 34
    array-length v3, v5

    array-length v6, v4

    if-ne v3, v6, :cond_0

    const-string v6, "preference_antibanding"

    const-string v7, "auto"

    const-string v8, "preferences_root"

    move-object v3, p0

    .line 35
    invoke-static/range {v3 .. v8}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->readFromBundle(Landroid/preference/PreferenceFragment;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "preference_antibanding"

    if-nez v1, :cond_1

    const-string v4, "auto"

    .line 41
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 46
    :cond_1
    invoke-virtual {p0, v3}, Lnet/sourceforge/opencamera/PreferenceSubProcessing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 47
    invoke-virtual {p0, v2}, Lnet/sourceforge/opencamera/PreferenceSubProcessing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 48
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    :goto_0
    const-string v3, "edge_modes"

    .line 52
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v3, "default"

    if-eqz v5, :cond_3

    .line 53
    array-length v4, v5

    if-lez v4, :cond_3

    const-string v4, "edge_modes_entries"

    .line 54
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 55
    array-length v4, v6

    array-length v7, v5

    if-ne v4, v7, :cond_3

    const-string v7, "preference_edge_mode"

    const-string v8, "default"

    const-string v9, "preferences_root"

    move-object v4, p0

    .line 56
    invoke-static/range {v4 .. v9}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->readFromBundle(Landroid/preference/PreferenceFragment;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v4, "preference_edge_mode"

    if-nez v1, :cond_4

    .line 62
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 67
    :cond_4
    invoke-virtual {p0, v4}, Lnet/sourceforge/opencamera/PreferenceSubProcessing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 68
    invoke-virtual {p0, v2}, Lnet/sourceforge/opencamera/PreferenceSubProcessing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 69
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    :goto_1
    const-string v4, "noise_reduction_modes"

    .line 73
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 74
    array-length v4, v6

    if-lez v4, :cond_6

    const-string v4, "noise_reduction_modes_entries"

    .line 75
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 76
    array-length p1, v7

    array-length v4, v6

    if-ne p1, v4, :cond_6

    const-string v8, "preference_noise_reduction_mode"

    const-string v9, "default"

    const-string v10, "preferences_root"

    move-object v5, p0

    .line 77
    invoke-static/range {v5 .. v10}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->readFromBundle(Landroid/preference/PreferenceFragment;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string p1, "preference_noise_reduction_mode"

    if-nez v1, :cond_7

    .line 83
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 88
    :cond_7
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubProcessing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 89
    invoke-virtual {p0, v2}, Lnet/sourceforge/opencamera/PreferenceSubProcessing;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 90
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    :goto_2
    return-void
.end method
