.class Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;
.super Ljava/lang/Object;
.source "FolderChooserDialog.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/ui/FolderChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final file:Ljava/io/File;

.field private final override_name:Ljava/lang/String;

.field private final sort_order:I


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;I)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;->file:Ljava/io/File;

    iput-object p2, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;->override_name:Ljava/lang/String;

    iput p3, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;->sort_order:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 53
    check-cast p1, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;

    invoke-virtual {p0, p1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;->compareTo(Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;)I
    .locals 2

    iget v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;->sort_order:I

    .line 76
    iget v1, p1, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;->sort_order:I

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;->file:Ljava/io/File;

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 86
    instance-of v0, p1, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 88
    :cond_0
    check-cast p1, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;

    iget v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;->sort_order:I

    .line 89
    iget v2, p1, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;->sort_order:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;->file:Ljava/io/File;

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;->file:Ljava/io/File;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;->file:Ljava/io/File;

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;->override_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;->file:Ljava/io/File;

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;->file:Ljava/io/File;

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
