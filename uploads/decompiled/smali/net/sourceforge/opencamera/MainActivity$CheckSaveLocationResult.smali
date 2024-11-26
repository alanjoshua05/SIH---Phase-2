.class public Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckSaveLocationResult"
.end annotation


# instance fields
.field final alt:Ljava/lang/String;

.field final res:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 1144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;->res:Z

    iput-object p2, p0, Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;->alt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1151
    instance-of v0, p1, Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1154
    :cond_0
    check-cast p1, Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;

    .line 1158
    iget-boolean v0, p1, Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;->res:Z

    iget-boolean v2, p0, Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;->res:Z

    if-ne v0, v2, :cond_2

    iget-object p1, p1, Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;->alt:Ljava/lang/String;

    iget-object v0, p0, Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;->alt:Ljava/lang/String;

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;->res:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4e1

    goto :goto_0

    :cond_0
    const/16 v0, 0x4eb

    :goto_0
    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;->alt:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 1164
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CheckSaveLocationResult{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;->res:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sourceforge/opencamera/MainActivity$CheckSaveLocationResult;->alt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
