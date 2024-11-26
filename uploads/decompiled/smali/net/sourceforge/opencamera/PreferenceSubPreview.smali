.class public Lnet/sourceforge/opencamera/PreferenceSubPreview;
.super Lnet/sourceforge/opencamera/PreferenceSubScreen;
.source "PreferenceSubPreview.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceSubPreview"


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

    const p1, 0x7f130006

    .line 20
    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubPreview;->addPreferencesFromResource(I)V

    .line 22
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/PreferenceSubPreview;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "using_android_l"

    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "is_multi_cam"

    .line 28
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "supports_preview_bitmaps"

    .line 32
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v2, "preference_ghost_image"

    .line 37
    invoke-virtual {p0, v2}, Lnet/sourceforge/opencamera/PreferenceSubPreview;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_0

    const v3, 0x7f030021

    .line 41
    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries(I)V

    const v3, 0x7f030023

    .line 42
    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 45
    :cond_0
    new-instance v3, Lnet/sourceforge/opencamera/PreferenceSubPreview$1;

    invoke-direct {v3, p0}, Lnet/sourceforge/opencamera/PreferenceSubPreview$1;-><init>(Lnet/sourceforge/opencamera/PreferenceSubPreview;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const/16 v2, 0x10

    new-array v3, v2, [Ljava/lang/CharSequence;

    new-array v4, v2, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    add-int/lit8 v6, v5, 0x1

    mul-int/lit8 v7, v6, 0x5

    .line 67
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "%"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    .line 68
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    move v5, v6

    goto :goto_0

    :cond_1
    const-string v2, "ghost_image_alpha"

    .line 70
    invoke-virtual {p0, v2}, Lnet/sourceforge/opencamera/PreferenceSubPreview;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;

    .line 71
    invoke-virtual {v2, v3}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v2, v4}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const-string v2, "preferences_root"

    if-nez v0, :cond_2

    const-string v3, "preference_focus_assist"

    .line 76
    invoke-virtual {p0, v3}, Lnet/sourceforge/opencamera/PreferenceSubPreview;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 78
    invoke-virtual {p0, v2}, Lnet/sourceforge/opencamera/PreferenceSubPreview;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 79
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    if-nez v1, :cond_3

    const-string v1, "preference_show_camera_id"

    .line 83
    invoke-virtual {p0, v1}, Lnet/sourceforge/opencamera/PreferenceSubPreview;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 85
    invoke-virtual {p0, v2}, Lnet/sourceforge/opencamera/PreferenceSubPreview;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 86
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    if-nez v0, :cond_4

    const-string v0, "preference_show_iso"

    .line 90
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubPreview;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 92
    invoke-virtual {p0, v2}, Lnet/sourceforge/opencamera/PreferenceSubPreview;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 93
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    if-nez p1, :cond_5

    .line 98
    invoke-virtual {p0, v2}, Lnet/sourceforge/opencamera/PreferenceSubPreview;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceGroup;

    const-string v0, "preference_histogram"

    .line 100
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubPreview;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 101
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v0, "preference_zebra_stripes"

    .line 103
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubPreview;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 104
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v0, "preference_zebra_stripes_foreground_color"

    .line 106
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubPreview;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 107
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v0, "preference_zebra_stripes_background_color"

    .line 109
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubPreview;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 110
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v0, "preference_focus_peaking"

    .line 112
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubPreview;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v0, "preference_focus_peaking_color"

    .line 115
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubPreview;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 116
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    return-void
.end method
