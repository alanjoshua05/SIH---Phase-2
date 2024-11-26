.class public Lnet/sourceforge/opencamera/PreferenceSubVideo;
.super Lnet/sourceforge/opencamera/PreferenceSubScreen;
.source "PreferenceSubVideo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceSubVideo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lnet/sourceforge/opencamera/PreferenceSubScreen;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/PreferenceSubVideo;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->setVideoProfileGammaDependency(Ljava/lang/String;)V

    return-void
.end method

.method private setVideoProfileGammaDependency(Ljava/lang/String;)V
    .locals 2

    const-string v0, "preference_video_profile_gamma"

    .line 237
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "gamma"

    .line 239
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 242
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setupDependencies()V
    .locals 4

    const-string v0, "preference_video_log"

    .line 194
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 196
    new-instance v1, Lnet/sourceforge/opencamera/PreferenceSubVideo$1;

    invoke-direct {v1, p0}, Lnet/sourceforge/opencamera/PreferenceSubVideo$1;-><init>(Lnet/sourceforge/opencamera/PreferenceSubVideo;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->setVideoProfileGammaDependency(Ljava/lang/String;)V

    .line 207
    :cond_0
    invoke-static {}, Lnet/sourceforge/opencamera/MyApplicationInterface;->mediastoreSupportsVideoSubtitles()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "preference_video_subtitle"

    .line 211
    invoke-virtual {p0, v0}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 217
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "preference_using_saf"

    .line 218
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 227
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 24

    move-object/from16 v0, p0

    .line 19
    invoke-super/range {p0 .. p1}, Lnet/sourceforge/opencamera/PreferenceSubScreen;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f13000a

    .line 20
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->addPreferencesFromResource(I)V

    .line 22
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 24
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "cameraId"

    .line 26
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "camera_open"

    .line 30
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "video_quality"

    .line 34
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "video_quality_string"

    .line 35
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string v7, "video_fps"

    .line 37
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    const-string v8, "video_fps_high_speed"

    .line 38
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v8

    .line 40
    invoke-static {v3}, Lnet/sourceforge/opencamera/PreferenceKeys;->getVideoFPSPreferenceKey(I)Ljava/lang/String;

    move-result-object v3

    const-string v9, "default"

    .line 43
    invoke-interface {v2, v3, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "supports_tonemap_curve"

    .line 47
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "supports_video_stabilization"

    .line 51
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    const-string v13, "supports_force_video_4k"

    .line 55
    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    const-string v14, "]"

    const-string v15, " ["

    move/from16 v16, v13

    const-string v13, "preference_video_quality"

    move/from16 v17, v12

    const-string v12, ""

    const/16 v18, 0x0

    move/from16 v19, v4

    const-string v4, "preferences_root"

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    move/from16 v20, v11

    .line 71
    array-length v11, v5

    new-array v11, v11, [Ljava/lang/CharSequence;

    move-object/from16 v21, v3

    .line 72
    array-length v3, v5

    new-array v3, v3, [Ljava/lang/CharSequence;

    move-object/from16 v23, v8

    move-object/from16 v22, v10

    const/4 v10, 0x0

    .line 73
    :goto_0
    array-length v8, v5

    if-ge v10, v8, :cond_0

    .line 74
    aget-object v8, v6, v10

    aput-object v8, v11, v10

    .line 75
    aget-object v8, v5, v10

    aput-object v8, v3, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v0, v13}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    .line 78
    invoke-virtual {v6, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const-string v3, "video_quality_preference_key"

    .line 80
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-interface {v2, v3, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 90
    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string v3, "video_is_high_speed"

    .line 93
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const v3, 0x7f100370

    if-eqz v1, :cond_1

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f1000b5

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    :goto_1
    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    move-object/from16 v21, v3

    move-object/from16 v23, v8

    move-object/from16 v22, v10

    move/from16 v20, v11

    .line 99
    invoke-virtual {v0, v13}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v4}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 102
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :goto_2
    if-eqz v7, :cond_5

    .line 107
    array-length v1, v7

    const/4 v3, 0x1

    add-int/2addr v1, v3

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 108
    array-length v6, v7

    add-int/2addr v6, v3

    new-array v6, v6, [Ljava/lang/CharSequence;

    .line 111
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f1002cc

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v18

    .line 112
    aput-object v9, v6, v18

    .line 114
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1000b5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 115
    :goto_3
    array-length v10, v7

    if-ge v9, v10, :cond_4

    .line 116
    aget v10, v7, v9

    if-eqz v23, :cond_3

    .line 117
    aget-boolean v11, v23, v9

    if-eqz v11, :cond_3

    .line 118
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v3

    goto :goto_4

    .line 121
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v3

    .line 123
    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    const-string v3, "preference_video_fps"

    .line 127
    invoke-virtual {v0, v3}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    .line 128
    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object/from16 v1, v22

    .line 130
    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v1, v21

    .line 132
    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    :cond_5
    if-nez v20, :cond_7

    const-string v1, "preference_video_log"

    if-nez v19, :cond_6

    const-string v3, "off"

    .line 135
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 141
    :cond_6
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v4}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 144
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v1, "preference_video_profile_gamma"

    .line 146
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 148
    invoke-virtual {v0, v4}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 149
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    if-nez v17, :cond_8

    const-string v1, "preference_video_stabilization"

    .line 153
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v4}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 156
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    if-eqz v16, :cond_9

    if-nez v5, :cond_a

    :cond_9
    const-string v1, "preference_force_video_4k"

    .line 160
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "preference_category_video_debugging"

    .line 161
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 162
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "preference_video_output_format"

    const/16 v3, 0x18

    if-ge v1, v3, :cond_b

    .line 166
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    const-string v4, "preference_video_output_format_mpeg4_hevc"

    invoke-static {v1, v4}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->filterArrayEntry(Landroid/preference/ListPreference;Ljava/lang/String;)V

    :cond_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v1, v4, :cond_c

    .line 169
    invoke-virtual {v0, v2}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    const-string v2, "preference_video_output_format_webm"

    invoke-static {v1, v2}, Lnet/sourceforge/opencamera/MyPreferenceFragment;->filterArrayEntry(Landroid/preference/ListPreference;Ljava/lang/String;)V

    :cond_c
    const-string v1, "preference_record_audio_src"

    .line 173
    invoke-virtual {v0, v1}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_d

    const v2, 0x7f030043

    .line 177
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    const v2, 0x7f030045

    .line 178
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 182
    :cond_d
    invoke-direct/range {p0 .. p0}, Lnet/sourceforge/opencamera/PreferenceSubVideo;->setupDependencies()V

    return-void
.end method
