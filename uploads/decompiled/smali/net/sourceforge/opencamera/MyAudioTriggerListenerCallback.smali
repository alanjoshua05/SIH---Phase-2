.class public Lnet/sourceforge/opencamera/MyAudioTriggerListenerCallback;
.super Ljava/lang/Object;
.source "MyAudioTriggerListenerCallback.java"

# interfaces
.implements Lnet/sourceforge/opencamera/AudioListener$AudioListenerCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "MyAudioTriggerLstnrCb"


# instance fields
.field private audio_noise_sensitivity:I

.field private last_level:I

.field private final main_activity:Lnet/sourceforge/opencamera/MainActivity;

.field private time_last_audio_trigger_photo:J

.field private time_quiet_loud:J


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/MainActivity;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/sourceforge/opencamera/MyAudioTriggerListenerCallback;->last_level:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lnet/sourceforge/opencamera/MyAudioTriggerListenerCallback;->time_quiet_loud:J

    iput-wide v1, p0, Lnet/sourceforge/opencamera/MyAudioTriggerListenerCallback;->time_last_audio_trigger_photo:J

    iput v0, p0, Lnet/sourceforge/opencamera/MyAudioTriggerListenerCallback;->audio_noise_sensitivity:I

    iput-object p1, p0, Lnet/sourceforge/opencamera/MyAudioTriggerListenerCallback;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    return-void
.end method


# virtual methods
.method public onAudio(I)V
    .locals 8

    iget v0, p0, Lnet/sourceforge/opencamera/MyAudioTriggerListenerCallback;->last_level:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lnet/sourceforge/opencamera/MyAudioTriggerListenerCallback;->last_level:I

    return-void

    :cond_0
    sub-int v0, p1, v0

    iget v1, p0, Lnet/sourceforge/opencamera/MyAudioTriggerListenerCallback;->audio_noise_sensitivity:I

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    if-le v0, v1, :cond_1

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sourceforge/opencamera/MyAudioTriggerListenerCallback;->time_quiet_loud:J

    goto :goto_0

    :cond_1
    neg-int v1, v1

    if-ge v0, v1, :cond_3

    iget-wide v0, p0, Lnet/sourceforge/opencamera/MyAudioTriggerListenerCallback;->time_quiet_loud:J

    cmp-long v5, v0, v2

    if-eqz v5, :cond_3

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lnet/sourceforge/opencamera/MyAudioTriggerListenerCallback;->time_quiet_loud:J

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x5dc

    cmp-long v7, v0, v5

    if-gez v7, :cond_2

    const/4 v0, 0x1

    const/4 v4, 0x1

    :cond_2
    iput-wide v2, p0, Lnet/sourceforge/opencamera/MyAudioTriggerListenerCallback;->time_quiet_loud:J

    :cond_3
    :goto_0
    iput p1, p0, Lnet/sourceforge/opencamera/MyAudioTriggerListenerCallback;->last_level:I

    if-eqz v4, :cond_6

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyAudioTriggerListenerCallback;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 86
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v4, "preference_audio_control"

    const-string v5, "none"

    .line 87
    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "noise"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-wide v4, p0, Lnet/sourceforge/opencamera/MyAudioTriggerListenerCallback;->time_last_audio_trigger_photo:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_4

    sub-long v2, v0, v4

    const-wide/16 v4, 0x1388

    cmp-long v6, v2, v4

    if-gez v6, :cond_4

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    iput-wide v0, p0, Lnet/sourceforge/opencamera/MyAudioTriggerListenerCallback;->time_last_audio_trigger_photo:J

    iget-object p1, p0, Lnet/sourceforge/opencamera/MyAudioTriggerListenerCallback;->main_activity:Lnet/sourceforge/opencamera/MainActivity;

    .line 102
    invoke-virtual {p1}, Lnet/sourceforge/opencamera/MainActivity;->audioTrigger()V

    :cond_6
    :goto_1
    return-void
.end method

.method setAudioNoiseSensitivity(I)V
    .locals 0

    iput p1, p0, Lnet/sourceforge/opencamera/MyAudioTriggerListenerCallback;->audio_noise_sensitivity:I

    return-void
.end method
