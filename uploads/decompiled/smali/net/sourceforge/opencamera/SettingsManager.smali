.class public Lnet/sourceforge/opencamera/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsManager"

.field private static final boolean_tag:Ljava/lang/String; = "boolean"

.field private static final doc_tag:Ljava/lang/String; = "open_camera_prefs"

.field private static final float_tag:Ljava/lang/String; = "float"

.field private static final int_tag:Ljava/lang/String; = "int"

.field private static final long_tag:Ljava/lang/String; = "long"

.field private static final string_tag:Ljava/lang/String; = "string"


# instance fields
.field private final main_activity:Lnet/sourceforge/opencamera/MainActivity;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/SettingsManager;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    return-void
.end method

.method private loadSettings(Ljava/io/InputStream;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 84
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const-string v3, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 85
    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 86
    invoke-interface {v2, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 87
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const-string v3, "open_camera_prefs"

    const/4 v4, 0x2

    .line 89
    invoke-interface {v2, v4, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lnet/sourceforge/opencamera/SettingsManager;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 93
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 94
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 95
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 97
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v5, v6, :cond_7

    .line 98
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v4, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v8, "key"

    .line 102
    invoke-interface {v2, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 109
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x4

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v9, "float"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_1
    const-string v9, "boolean"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_2
    const-string v9, "long"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_3
    const-string v9, "int"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    goto :goto_2

    :sswitch_4
    const-string v9, "string"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, -0x1

    :goto_2
    const-string v9, "value"

    if-eqz v5, :cond_6

    if-eq v5, v7, :cond_5

    if-eq v5, v4, :cond_4

    if-eq v5, v6, :cond_3

    if-eq v5, v10, :cond_2

    goto :goto_3

    .line 123
    :cond_2
    :try_start_1
    invoke-interface {v2, v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 120
    :cond_3
    invoke-interface {v2, v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-interface {v3, v8, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 117
    :cond_4
    invoke-interface {v2, v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 114
    :cond_5
    invoke-interface {v2, v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-interface {v3, v8, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 111
    :cond_6
    invoke-interface {v2, v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-interface {v3, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 129
    :goto_3
    invoke-static {v2}, Lnet/sourceforge/opencamera/SettingsManager;->skipXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "done_first_time"

    .line 134
    invoke-interface {v3, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lnet/sourceforge/opencamera/SettingsManager;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 136
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, p0, Lnet/sourceforge/opencamera/SettingsManager;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    invoke-virtual {v4}, Lnet/sourceforge/opencamera/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 137
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string v4, "latest_version"

    .line 138
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v2

    .line 143
    :try_start_3
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 146
    :goto_4
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lnet/sourceforge/opencamera/SettingsManager;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 147
    iget-boolean v2, v2, Lnet/sourceforge/opencamera/MainActivity;->is_test:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lnet/sourceforge/opencamera/SettingsManager;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 149
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->restartOpenCamera()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    :cond_8
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 163
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    return v7

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v2

    .line 154
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Lnet/sourceforge/opencamera/SettingsManager;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 155
    invoke-virtual {v2}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v2

    const v3, 0x7f100327

    invoke-virtual {v2, v1, v3}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 160
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    .line 163
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_6
    return v0

    .line 160
    :goto_7
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_8

    :catch_4
    move-exception p1

    .line 163
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 165
    :goto_8
    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9

    :sswitch_data_0
    .sparse-switch
        -0x352a9fef -> :sswitch_4
        0x197ef -> :sswitch_3
        0x32c67c -> :sswitch_2
        0x3db6c28 -> :sswitch_1
        0x5d0225c -> :sswitch_0
    .end sparse-switch
.end method

.method private static skipXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 174
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 170
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public loadSettings(Landroid/net/Uri;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/SettingsManager;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 65
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/SettingsManager;->loadSettings(Ljava/io/InputStream;)Z

    move-result p1

    return p1

    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to load: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SettingsManager"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/SettingsManager;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 70
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f100327

    invoke-virtual {p1, v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    const/4 p1, 0x0

    return p1
.end method

.method public loadSettings(Ljava/lang/String;)Z
    .locals 3

    .line 49
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/SettingsManager;->loadSettings(Ljava/io/InputStream;)Z

    move-result p1

    return p1

    :catch_0
    move-exception v0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to load: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SettingsManager"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    iget-object p1, p0, Lnet/sourceforge/opencamera/SettingsManager;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 54
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f100327

    invoke-virtual {p1, v0, v1}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    const/4 p1, 0x0

    return p1
.end method

.method public saveSettings(Ljava/lang/String;)V
    .locals 13

    const-string v0, "open_camera_prefs"

    const-string v1, "UTF-8"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lnet/sourceforge/opencamera/SettingsManager;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 190
    invoke-virtual {v3}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object v4

    .line 203
    invoke-virtual {v4}, Lnet/sourceforge/opencamera/StorageUtils;->getSettingsFolder()Ljava/io/File;

    move-result-object v3

    .line 205
    invoke-virtual {v4, v3}, Lnet/sourceforge/opencamera/StorageUtils;->createFolderIfRequired(Ljava/io/File;)V

    .line 206
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/SettingsManager;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 207
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lnet/sourceforge/opencamera/MainActivity;->test_save_settings_file:Ljava/lang/String;

    .line 208
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 212
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 213
    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const/4 v7, 0x1

    .line 214
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 215
    invoke-interface {v3, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v7, p0, Lnet/sourceforge/opencamera/SettingsManager;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 217
    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 218
    invoke-interface {v7}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    .line 219
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 220
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 221
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v9, :cond_0

    .line 224
    instance-of v10, v8, Ljava/lang/Boolean;

    if-eqz v10, :cond_1

    const-string v10, "boolean"

    goto :goto_1

    .line 227
    :cond_1
    instance-of v10, v8, Ljava/lang/Float;

    if-eqz v10, :cond_2

    const-string v10, "float"

    goto :goto_1

    .line 230
    :cond_2
    instance-of v10, v8, Ljava/lang/Integer;

    if-eqz v10, :cond_3

    const-string v10, "int"

    goto :goto_1

    .line 233
    :cond_3
    instance-of v10, v8, Ljava/lang/Long;

    if-eqz v10, :cond_4

    const-string v10, "long"

    goto :goto_1

    .line 236
    :cond_4
    instance-of v10, v8, Ljava/lang/String;

    if-eqz v10, :cond_5

    const-string v10, "string"

    goto :goto_1

    :cond_5
    const-string v10, "SettingsManager"

    .line 240
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown value type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v2

    :goto_1
    if-eqz v10, :cond_0

    .line 244
    invoke-interface {v3, v2, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, "key"

    .line 245
    invoke-interface {v3, v2, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "value"

    .line 246
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v2, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 247
    invoke-interface {v3, v2, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 251
    :cond_6
    invoke-interface {v3, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 252
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 253
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 254
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/SettingsManager;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 259
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    const v1, 0x7f10032f

    invoke-virtual {v0, v2, v1}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 264
    invoke-virtual/range {v4 .. v10}, Lnet/sourceforge/opencamera/StorageUtils;->broadcastFile(Ljava/io/File;ZZZZLandroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 274
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object p1, v2

    .line 268
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/SettingsManager;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 269
    invoke-virtual {v0}, Lnet/sourceforge/opencamera/MainActivity;->getPreview()Lnet/sourceforge/opencamera/preview/Preview;

    move-result-object v0

    const v1, 0x7f10032e

    invoke-virtual {v0, v2, v1}, Lnet/sourceforge/opencamera/preview/Preview;->showToast(Lnet/sourceforge/opencamera/ToastBoxer;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_7

    .line 274
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 277
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_3
    return-void

    :catchall_1
    move-exception v0

    move-object v2, p1

    :goto_4
    if-eqz v2, :cond_8

    .line 274
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 277
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 280
    :cond_8
    :goto_5
    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method
