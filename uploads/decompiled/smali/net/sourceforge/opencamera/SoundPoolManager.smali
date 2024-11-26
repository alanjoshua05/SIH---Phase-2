.class Lnet/sourceforge/opencamera/SoundPoolManager;
.super Ljava/lang/Object;
.source "SoundPoolManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundPoolManager"


# instance fields
.field private final context:Landroid/content/Context;

.field private sound_ids:Landroid/util/SparseIntArray;

.field private sound_pool:Landroid/media/SoundPool;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/SoundPoolManager;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method initSound()V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/SoundPoolManager;->sound_pool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 30
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 31
    invoke-static {v0, v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 32
    invoke-static {v0, v1}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 33
    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes$Builder;)Landroid/media/AudioAttributes;

    move-result-object v0

    .line 34
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 35
    invoke-static {v1, v2}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/SoundPool$Builder;I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    .line 36
    invoke-static {v1, v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/SoundPool$Builder;Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 37
    invoke-static {v0}, Lnet/sourceforge/opencamera/ImageSaver$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/SoundPool$Builder;)Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/opencamera/SoundPoolManager;->sound_pool:Landroid/media/SoundPool;

    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lnet/sourceforge/opencamera/SoundPoolManager;->sound_pool:Landroid/media/SoundPool;

    .line 42
    :goto_0
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/opencamera/SoundPoolManager;->sound_ids:Landroid/util/SparseIntArray;

    :cond_1
    return-void
.end method

.method loadSound(I)V
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/SoundPoolManager;->sound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/sourceforge/opencamera/SoundPoolManager;->context:Landroid/content/Context;

    const/4 v2, 0x1

    .line 62
    invoke-virtual {v0, v1, p1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iget-object v1, p0, Lnet/sourceforge/opencamera/SoundPoolManager;->sound_ids:Landroid/util/SparseIntArray;

    .line 65
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-void
.end method

.method playSound(I)V
    .locals 8

    iget-object v0, p0, Lnet/sourceforge/opencamera/SoundPoolManager;->sound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/SoundPoolManager;->sound_ids:Landroid/util/SparseIntArray;

    .line 73
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/SoundPoolManager;->sound_ids:Landroid/util/SparseIntArray;

    .line 78
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    iget-object v1, p0, Lnet/sourceforge/opencamera/SoundPoolManager;->sound_pool:Landroid/media/SoundPool;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 81
    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_1
    :goto_0
    return-void
.end method

.method releaseSound()V
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/SoundPoolManager;->sound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/opencamera/SoundPoolManager;->sound_pool:Landroid/media/SoundPool;

    iput-object v0, p0, Lnet/sourceforge/opencamera/SoundPoolManager;->sound_ids:Landroid/util/SparseIntArray;

    :cond_0
    return-void
.end method
