.class Lnet/sourceforge/opencamera/AudioListener$1;
.super Ljava/lang/Thread;
.source "AudioListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sourceforge/opencamera/AudioListener;-><init>(Lnet/sourceforge/opencamera/AudioListener$AudioListenerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sourceforge/opencamera/AudioListener;

.field final synthetic val$buffer:[S

.field final synthetic val$cb:Lnet/sourceforge/opencamera/AudioListener$AudioListenerCallback;


# direct methods
.method constructor <init>(Lnet/sourceforge/opencamera/AudioListener;[SLnet/sourceforge/opencamera/AudioListener$AudioListenerCallback;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/AudioListener$1;->this$0:Lnet/sourceforge/opencamera/AudioListener;

    iput-object p2, p0, Lnet/sourceforge/opencamera/AudioListener$1;->val$buffer:[S

    iput-object p3, p0, Lnet/sourceforge/opencamera/AudioListener$1;->val$cb:Lnet/sourceforge/opencamera/AudioListener$AudioListenerCallback;

    .line 76
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/AudioListener$1;->this$0:Lnet/sourceforge/opencamera/AudioListener;

    .line 83
    invoke-static {v0}, Lnet/sourceforge/opencamera/AudioListener;->access$000(Lnet/sourceforge/opencamera/AudioListener;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/AudioListener$1;->this$0:Lnet/sourceforge/opencamera/AudioListener;

    .line 91
    invoke-static {v0}, Lnet/sourceforge/opencamera/AudioListener;->access$200(Lnet/sourceforge/opencamera/AudioListener;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/AudioListener$1;->val$buffer:[S

    iget-object v2, p0, Lnet/sourceforge/opencamera/AudioListener$1;->this$0:Lnet/sourceforge/opencamera/AudioListener;

    invoke-static {v2}, Lnet/sourceforge/opencamera/AudioListener;->access$100(Lnet/sourceforge/opencamera/AudioListener;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lnet/sourceforge/opencamera/AudioListener$1;->val$buffer:[S

    .line 96
    aget-short v4, v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 98
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 100
    :cond_1
    div-int/2addr v1, v0

    iget-object v0, p0, Lnet/sourceforge/opencamera/AudioListener$1;->val$cb:Lnet/sourceforge/opencamera/AudioListener$AudioListenerCallback;

    .line 106
    invoke-interface {v0, v1}, Lnet/sourceforge/opencamera/AudioListener$AudioListenerCallback;->onAudio(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/sourceforge/opencamera/AudioListener$1;->this$0:Lnet/sourceforge/opencamera/AudioListener;

    .line 126
    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lnet/sourceforge/opencamera/AudioListener$1;->this$0:Lnet/sourceforge/opencamera/AudioListener;

    .line 129
    invoke-static {v1}, Lnet/sourceforge/opencamera/AudioListener;->access$200(Lnet/sourceforge/opencamera/AudioListener;)Landroid/media/AudioRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/AudioListener$1;->this$0:Lnet/sourceforge/opencamera/AudioListener;

    const/4 v2, 0x0

    .line 130
    invoke-static {v1, v2}, Lnet/sourceforge/opencamera/AudioListener;->access$202(Lnet/sourceforge/opencamera/AudioListener;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;

    iget-object v1, p0, Lnet/sourceforge/opencamera/AudioListener$1;->this$0:Lnet/sourceforge/opencamera/AudioListener;

    .line 131
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 132
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
