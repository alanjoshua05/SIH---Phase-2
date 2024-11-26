.class public Lnet/sourceforge/opencamera/ui/FolderChooserDialog;
.super Landroid/app/DialogFragment;
.source "FolderChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;,
        Lnet/sourceforge/opencamera/ui/FolderChooserDialog$NewFolderInputFilter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FolderChooserFragment"


# instance fields
.field private chosen_file:Ljava/lang/String;

.field private chosen_folder:Ljava/lang/String;

.field private current_folder:Ljava/io/File;

.field private extension:Ljava/lang/String;

.field private folder_dialog:Landroid/app/AlertDialog;

.field private list:Landroid/widget/ListView;

.field private max_parent:Ljava/io/File;

.field private mode_folder:Z

.field private show_dcim_shortcut:Z

.field private show_new_folder_button:Z

.field private start_folder:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->show_new_folder_button:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->show_dcim_shortcut:Z

    iput-boolean v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->mode_folder:Z

    .line 45
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->start_folder:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;Ljava/io/File;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->refreshList(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$100(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->mode_folder:Z

    return p0
.end method

.method static synthetic access$202(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->chosen_file:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 37
    iget-object p0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->folder_dialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$400(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;)Z
    .locals 0

    .line 37
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->useFolder()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->show_new_folder_button:Z

    return p0
.end method

.method static synthetic access$600(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->newFolder()V

    return-void
.end method

.method static synthetic access$800(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;)Ljava/io/File;
    .locals 0

    .line 37
    iget-object p0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->current_folder:Ljava/io/File;

    return-object p0
.end method

.method private canWrite()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->current_folder:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private newFolder()V
    .locals 7

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->current_folder:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->canWrite()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 374
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c001e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090066

    .line 375
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 377
    invoke-virtual {v2}, Landroid/widget/EditText;->setSingleLine()V

    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v5, 0x1

    .line 378
    invoke-virtual {v2, v5, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 381
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f100077

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 382
    new-instance v4, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$NewFolderInputFilter;

    invoke-direct {v4, v3}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$NewFolderInputFilter;-><init>(Lnet/sourceforge/opencamera/ui/FolderChooserDialog$1;)V

    new-array v5, v5, [Landroid/text/InputFilter;

    .line 383
    aput-object v4, v5, v1

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 385
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 387
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 388
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$3;

    invoke-direct {v1, p0, v2}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$3;-><init>(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;Landroid/widget/EditText;)V

    const v2, 0x104000a

    .line 389
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 426
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 431
    :cond_1
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f100046

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private refreshList(Ljava/io/File;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 243
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 248
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    .line 252
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 253
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->max_parent:Ljava/io/File;

    if-eqz v3, :cond_1

    .line 254
    invoke-virtual {v3, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 258
    :cond_1
    new-instance v3, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1000d4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6, v4}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    iget-boolean v3, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->show_dcim_shortcut:Z

    if-eqz v3, :cond_3

    .line 262
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 263
    invoke-virtual {v3, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 264
    new-instance v5, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v0, v6}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v1, :cond_8

    .line 267
    array-length v3, v1

    :goto_2
    if-ge v4, v3, :cond_8

    aget-object v5, v1, v4

    .line 269
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    iget-boolean v6, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->mode_folder:Z

    if-nez v6, :cond_7

    .line 271
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->extension:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 274
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2e

    .line 275
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    .line 277
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->extension:Ljava/lang/String;

    .line 278
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_5

    .line 286
    :cond_5
    :goto_3
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x2

    goto :goto_4

    :cond_6
    const/4 v6, 0x3

    .line 287
    :goto_4
    new-instance v7, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;

    invoke-direct {v7, v5, v0, v6}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$FileWrapper;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 291
    :cond_8
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 293
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x1090003

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iget-object v1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->list:Landroid/widget/ListView;

    .line 294
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->current_folder:Ljava/io/File;

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->folder_dialog:Landroid/app/AlertDialog;

    .line 298
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private useFolder()Z
    .locals 3

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->current_folder:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 318
    :cond_0
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->current_folder:Ljava/io/File;

    .line 319
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->show_dcim_shortcut:Z

    if-eqz v1, :cond_1

    .line 321
    invoke-static {}, Lnet/sourceforge/opencamera/StorageUtils;->getBaseFolder()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->current_folder:Ljava/io/File;

    .line 322
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->current_folder:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->current_folder:Ljava/io/File;

    .line 325
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->chosen_folder:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    .line 334
    :cond_2
    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f100046

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1
.end method


# virtual methods
.method public getChosenFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->chosen_file:Ljava/lang/String;

    return-object v0
.end method

.method public getChosenFolder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->chosen_folder:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentFolder()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->current_folder:Ljava/io/File;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 112
    new-instance p1, Landroid/widget/ListView;

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->list:Landroid/widget/ListView;

    .line 113
    new-instance v0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$1;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$1;-><init>(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->list:Landroid/widget/ListView;

    .line 136
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-boolean v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->mode_folder:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x104000a

    .line 138
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->show_new_folder_button:Z

    if-eqz v0, :cond_1

    const v0, 0x7f1000c3

    .line 141
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    const/high16 v0, 0x1040000

    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 144
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->folder_dialog:Landroid/app/AlertDialog;

    .line 146
    new-instance v0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;

    invoke-direct {v0, p0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog$2;-><init>(Lnet/sourceforge/opencamera/ui/FolderChooserDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->start_folder:Ljava/io/File;

    .line 176
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->start_folder:Ljava/io/File;

    .line 179
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->start_folder:Ljava/io/File;

    .line 185
    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->refreshList(Ljava/io/File;)V

    .line 186
    invoke-direct {p0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->canWrite()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->show_dcim_shortcut:Z

    if-eqz p1, :cond_3

    .line 195
    sget-object p1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->refreshList(Ljava/io/File;)V

    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->current_folder:Ljava/io/File;

    if-nez p1, :cond_3

    .line 199
    new-instance p1, Ljava/io/File;

    const-string v0, "/"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->refreshList(Ljava/io/File;)V

    :cond_3
    iget-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->folder_dialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 438
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    iget-object v0, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->current_folder:Ljava/io/File;

    .line 440
    invoke-direct {p0, v0}, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->refreshList(Ljava/io/File;)V

    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->extension:Ljava/lang/String;

    return-void
.end method

.method public setMaxParent(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->max_parent:Ljava/io/File;

    return-void
.end method

.method public setModeFolder(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->mode_folder:Z

    return-void
.end method

.method public setShowDCIMShortcut(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->show_dcim_shortcut:Z

    return-void
.end method

.method public setShowNewFolderButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->show_new_folder_button:Z

    return-void
.end method

.method public setStartFolder(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/opencamera/ui/FolderChooserDialog;->start_folder:Ljava/io/File;

    return-void
.end method
