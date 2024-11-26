.class Lnet/sourceforge/opencamera/ui/FolderChooserDialog$NewFolderInputFilter;
.super Ljava/lang/Object;
.source "FolderChooserDialog.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sourceforge/opencamera/ui/FolderChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NewFolderInputFilter"
.end annotation


# static fields
.field private static final disallowed:Ljava/lang/String; = "|\\?*<\":>"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sourceforge/opencamera/ui/FolderChooserDialog$1;)V
    .locals 0

    .line 353
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$NewFolderInputFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    :goto_0
    if-ge p2, p3, :cond_1

    const-string p4, "|\\?*<\":>"

    .line 360
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/String;->indexOf(I)I

    move-result p4

    const/4 p5, -0x1

    if-eq p4, p5, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
