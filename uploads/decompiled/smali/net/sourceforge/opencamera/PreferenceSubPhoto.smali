.class public Lnet/sourceforge/opencamera/PreferenceSubPhoto;
.super Lnet/sourceforge/opencamera/PreferenceSubScreen;
.source "PreferenceSubPhoto.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceSubPhoto"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lnet/sourceforge/opencamera/PreferenceSubScreen;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 27

    move-object/from16 v0, p0

    .line 24
    invoke-super/range {p0 .. p1}, Lnet/sourceforge/opencamera/PreferenceSubScreen;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f130005

    .line 25
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->addPreferencesFromResource(I)V

    .line 27
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 29
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "cameraId"

    .line 31
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "using_android_l"

    .line 35
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "resolution_widths"

    .line 39
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const-string v6, "resolution_heights"

    .line 40
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    const-string v7, "resolution_supports_burst"

    .line 41
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v7

    const-string v8, "supports_raw"

    .line 43
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "supports_burst_raw"

    .line 46
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "supports_nr"

    .line 50
    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "supports_hdr"

    .line 54
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "supports_expo_bracketing"

    .line 58
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    const-string v13, "max_expo_bracketing_n_images"

    .line 62
    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v14, "supports_panorama"

    .line 66
    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    const-string v15, "supports_photo_video_recording"

    .line 70
    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v15, "preference_resolution"

    move/from16 v16, v1

    const-string v1, ""

    move/from16 v17, v4

    const-string v4, "preferences_root"

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    move/from16 v18, v14

    .line 75
    array-length v14, v5

    new-array v14, v14, [Ljava/lang/CharSequence;

    move/from16 v19, v13

    .line 76
    array-length v13, v5

    new-array v13, v13, [Ljava/lang/CharSequence;

    move/from16 v21, v11

    move/from16 v20, v12

    const/4 v12, 0x0

    .line 77
    :goto_0
    array-length v11, v5

    if-ge v12, v11, :cond_0

    .line 78
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v10

    aget v10, v5, v12

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " x "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v6, v12

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v23, v9

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move/from16 v24, v8

    aget v8, v5, v12

    move-object/from16 v25, v4

    aget v4, v6, v12

    move-object/from16 v26, v1

    aget-boolean v1, v7, v12

    invoke-static {v9, v8, v4, v1}, Lnet/sourceforge/opencamera/preview/Preview;->getAspectRatioMPString(Landroid/content/res/Resources;IIZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v12

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, v5, v12

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v6, v12

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v10, v22

    move/from16 v9, v23

    move/from16 v8, v24

    move-object/from16 v4, v25

    move-object/from16 v1, v26

    goto :goto_0

    :cond_0
    move-object/from16 v26, v1

    move-object/from16 v25, v4

    move/from16 v24, v8

    move/from16 v23, v9

    move/from16 v22, v10

    .line 81
    invoke-virtual {v0, v15}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 82
    invoke-virtual {v1, v14}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v1, v13}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 84
    invoke-static {v3}, Lnet/sourceforge/opencamera/PreferenceKeys;->getResolutionPreferenceKey(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v26

    .line 85
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    move-object/from16 v3, v25

    goto :goto_1

    :cond_1
    move-object/from16 v25, v4

    move/from16 v24, v8

    move/from16 v23, v9

    move/from16 v22, v10

    move/from16 v21, v11

    move/from16 v20, v12

    move/from16 v19, v13

    move/from16 v18, v14

    move-object v4, v1

    .line 93
    invoke-virtual {v0, v15}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object/from16 v3, v25

    .line 95
    invoke-virtual {v0, v3}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 96
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :goto_1
    const/16 v1, 0x64

    new-array v5, v1, [Ljava/lang/CharSequence;

    new-array v6, v1, [Ljava/lang/CharSequence;

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v1, :cond_2

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v15, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v15

    .line 105
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v15

    move v15, v8

    goto :goto_2

    :cond_2
    const-string v1, "preference_quality"

    .line 107
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;

    .line 108
    invoke-virtual {v1, v5}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v1, v6}, Lnet/sourceforge/opencamera/ui/ArraySeekBarPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const-string v1, "preference_raw"

    if-nez v24, :cond_3

    .line 113
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v3}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 116
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 119
    :cond_3
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-ge v4, v5, :cond_4

    const v4, 0x7f03003d

    .line 123
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    const v4, 0x7f03003f

    .line 124
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 127
    :cond_4
    new-instance v4, Lnet/sourceforge/opencamera/PreferenceSubPhoto$1;

    invoke-direct {v4, v0, v2}, Lnet/sourceforge/opencamera/PreferenceSubPhoto$1;-><init>(Lnet/sourceforge/opencamera/PreferenceSubPhoto;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_3
    if-eqz v24, :cond_5

    if-nez v23, :cond_6

    .line 171
    :cond_5
    invoke-virtual {v0, v3}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    const-string v2, "preference_raw_expo_bracketing"

    .line 172
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 173
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v2, "preference_raw_focus_bracketing"

    .line 174
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 175
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    if-nez v22, :cond_7

    const-string v1, "preference_nr_save"

    .line 179
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 181
    invoke-virtual {v0, v3}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 182
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    if-nez v21, :cond_8

    .line 187
    invoke-virtual {v0, v3}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    const-string v2, "preference_hdr_save_expo"

    .line 189
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 190
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v2, "preference_hdr_tonemapping"

    .line 192
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 193
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v2, "preference_hdr_contrast_enhancement"

    .line 195
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 196
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    if-eqz v20, :cond_9

    const/4 v1, 0x3

    move/from16 v2, v19

    if-gt v2, v1, :cond_a

    :cond_9
    const-string v1, "preference_expo_bracketing_n_images"

    .line 200
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 202
    invoke-virtual {v0, v3}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 203
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_a
    if-nez v20, :cond_b

    const-string v1, "preference_expo_bracketing_stops"

    .line 206
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v3}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 209
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_b
    if-nez v18, :cond_c

    .line 214
    invoke-virtual {v0, v3}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    const-string v2, "preference_panorama_crop"

    .line 216
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 217
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v2, "preference_panorama_save"

    .line 219
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 220
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_c
    const-string v1, "preference_camera2_photo_video_recording"

    const-string v2, "preference_category_photo_debugging"

    if-nez v17, :cond_d

    .line 224
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    const-string v5, "preference_camera2_fake_flash"

    .line 226
    invoke-virtual {v0, v5}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 227
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v5, "preference_camera2_dummy_capture_hack"

    .line 229
    invoke-virtual {v0, v5}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 230
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v5, "preference_camera2_fast_burst"

    .line 232
    invoke-virtual {v0, v5}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 233
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 235
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 236
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    :cond_d
    if-nez v16, :cond_e

    .line 240
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 241
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 242
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 248
    :cond_e
    :goto_4
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 251
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_f

    .line 254
    invoke-virtual {v0, v3}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 255
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_f
    const-string v1, "preference_exif_artist"

    .line 259
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v1}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->setSummary(Landroid/preference/Preference;)V

    const-string v1, "preference_exif_copyright"

    .line 260
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v1}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->setSummary(Landroid/preference/Preference;)V

    const-string v1, "preference_textstamp"

    .line 261
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/PreferenceSubPhoto;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v1}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->setSummary(Landroid/preference/Preference;)V

    return-void
.end method
