.class Lnet/sourceforge/opencamera/AudioListener;
.super Ljava/lang/Object;
.source "AudioListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/AudioListener$AudioListenerCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioListener"


# instance fields
.field private ar:Landroid/media/AudioRecord;

.field private buffer_size:I

.field private volatile is_running:Z

.field private thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/AudioListener$AudioListenerCallback;)V
    .locals 8

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/AudioListener;->is_running:Z

    const/4 v1, -0x1

    iput v1, p0, Lnet/sourceforge/opencamera/AudioListener;->buffer_size:I

    const/16 v5, 0x10

    const/4 v6, 0x2

    const/16 v1, 0x1f40

    .line 33
    :try_start_0
    invoke-static {v1, v5, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    iput v1, p0, Lnet/sourceforge/opencamera/AudioListener;->buffer_size:I

    if-gtz v1, :cond_0

    return-void

    .line 47
    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :try_start_1
    new-instance v1, Landroid/media/AudioRecord;

    const/4 v3, 0x1

    const/16 v4, 0x1f40

    iget v7, p0, Lnet/sourceforge/opencamera/AudioListener;->buffer_size:I

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v1, p0, Lnet/sourceforge/opencamera/AudioListener;->ar:Landroid/media/AudioRecord;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 50
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lnet/sourceforge/opencamera/AudioListener;->ar:Landroid/media/AudioRecord;

    .line 60
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 71
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget v0, p0, Lnet/sourceforge/opencamera/AudioListener;->buffer_size:I

    .line 73
    new-array v0, v0, [S

    iget-object v1, p0, Lnet/sourceforge/opencamera/AudioListener;->ar:Landroid/media/AudioRecord;

    .line 74
    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 76
    new-instance v1, Lnet/sourceforge/opencamera/AudioListener$1;

    invoke-direct {v1, p0, v0, p1}, Lnet/sourceforge/opencamera/AudioListener$1;-><init>(Lnet/sourceforge/opencamera/AudioListener;[SLnet/sourceforge/opencamera/AudioListener$AudioListenerCallback;)V

    iput-object v1, p0, Lnet/sourceforge/opencamera/AudioListener;->thread:Ljava/lang/Thread;

    return-void

    :cond_1
    :try_start_3
    const-string p1, "AudioListener"

    const-string v0, "audiorecord failed to initialise"

    .line 65
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lnet/sourceforge/opencamera/AudioListener;->ar:Landroid/media/AudioRecord;

    .line 66
    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sourceforge/opencamera/AudioListener;->ar:Landroid/media/AudioRecord;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 69
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 71
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 50
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "AudioListener"

    const-string v0, "failed to create audiorecord"

    .line 54
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/AudioListener;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/AudioListener;->is_running:Z

    return p0
.end method

.method static synthetic access$100(Lnet/sourceforge/opencamera/AudioListener;)I
    .locals 0

    .line 12
    iget p0, p0, Lnet/sourceforge/opencamera/AudioListener;->buffer_size:I

    return p0
.end method

.method static synthetic access$200(Lnet/sourceforge/opencamera/AudioListener;)Landroid/media/AudioRecord;
    .locals 0

    .line 12
    iget-object p0, p0, Lnet/sourceforge/opencamera/AudioListener;->ar:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$202(Lnet/sourceforge/opencamera/AudioListener;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    .locals 0

    .line 12
    iput-object p1, p0, Lnet/sourceforge/opencamera/AudioListener;->ar:Landroid/media/AudioRecord;

    return-object p1
.end method


# virtual methods
.method release(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/AudioListener;->is_running:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/AudioListener;->thread:Ljava/lang/Thread;

    if-eqz p1, :cond_1

    .line 172
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object p1, p0, Lnet/sourceforge/opencamera/AudioListener;->ar:Landroid/media/AudioRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 177
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 180
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 185
    :cond_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method start()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/AudioListener;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method status()Z
    .locals 1

    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/AudioListener;->ar:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
