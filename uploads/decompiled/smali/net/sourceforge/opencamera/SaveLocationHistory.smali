.class public Lnet/sourceforge/opencamera/SaveLocationHistory;
.super Ljava/lang/Object;
.source "SaveLocationHistory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SaveLocationHistory"


# instance fields
.field private final main_activity:Lnet/sourceforge/opencamera/MainActivity;

.field private final pref_base:Ljava/lang/String;

.field private final save_location_history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/SaveLocationHistory;->save_location_history:Ljava/util/ArrayList;

    iput-object p1, p0, Lnet/sourceforge/opencamera/SaveLocationHistory;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    iput-object p2, p0, Lnet/sourceforge/opencamera/SaveLocationHistory;->pref_base:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lnet/sourceforge/opencamera/SaveLocationHistory;->save_location_history:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0, p3, v1}, Lnet/sourceforge/opencamera/SaveLocationHistory;->updateFolderHistory(Ljava/lang/String;Z)V

    return-void
.end method

.method private updateFolderHistory(Ljava/lang/String;)V
    .locals 1

    :goto_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/SaveLocationHistory;->save_location_history:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/SaveLocationHistory;->save_location_history:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object p1, p0, Lnet/sourceforge/opencamera/SaveLocationHistory;->save_location_history:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lnet/sourceforge/opencamera/SaveLocationHistory;->save_location_history:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 82
    :cond_1
    invoke-direct {p0}, Lnet/sourceforge/opencamera/SaveLocationHistory;->writeSaveLocations()V

    return-void
.end method

.method private writeSaveLocations()V
    .locals 5

    iget-object v0, p0, Lnet/sourceforge/opencamera/SaveLocationHistory;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 107
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/sourceforge/opencamera/SaveLocationHistory;->pref_base:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/SaveLocationHistory;->save_location_history:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/sourceforge/opencamera/SaveLocationHistory;->save_location_history:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnet/sourceforge/opencamera/SaveLocationHistory;->save_location_history:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lnet/sourceforge/opencamera/SaveLocationHistory;->pref_base:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method clearFolderHistory(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/SaveLocationHistory;->save_location_history:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/opencamera/SaveLocationHistory;->updateFolderHistory(Ljava/lang/String;Z)V

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/SaveLocationHistory;->save_location_history:Ljava/util/ArrayList;

    .line 155
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/SaveLocationHistory;->save_location_history:Ljava/util/ArrayList;

    .line 131
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public remove(I)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/SaveLocationHistory;->save_location_history:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public set(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/SaveLocationHistory;->save_location_history:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/SaveLocationHistory;->save_location_history:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method updateFolderHistory(Ljava/lang/String;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/SaveLocationHistory;->updateFolderHistory(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/SaveLocationHistory;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 59
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->getStorageUtils()Lnet/sourceforge/opencamera/StorageUtils;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/StorageUtils;->getLastMediaScannedHasNoExifDateTime()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/sourceforge/opencamera/SaveLocationHistory;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 60
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->updateGalleryIcon()V

    :cond_0
    return-void
.end method
