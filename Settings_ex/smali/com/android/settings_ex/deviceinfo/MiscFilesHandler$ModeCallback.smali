.class Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private final FILES_URI:Landroid/net/Uri;

.field private final VOLUME_NAME:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDataCount:I

.field private mMenuNubiaSelectAll:Lcn/nubia/commonui/widget/NubiaSelectAll;

.field private mMenuSelectAll:Landroid/view/MenuItem;

.field private mSelectAll:Landroid/widget/TextView;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const-string v0, "external"

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->VOLUME_NAME:Ljava/lang/String;

    .line 123
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->FILES_URI:Landroid/net/Uri;

    .line 125
    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    .line 126
    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {p1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    .line 127
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->execDeleteFile()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;Ljava/io/File;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->deleteDir(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->deleteDB(Ljava/lang/String;)V

    return-void
.end method

.method private deleteDB(Ljava/lang/String;)V
    .locals 7
    .param p1, "deleteArgs"    # Ljava/lang/String;

    .prologue
    .line 254
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 265
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->FILES_URI:Landroid/net/Uri;

    .line 257
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "_data like ? or _data like ? "

    .line 259
    .local v3, "where":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 261
    .local v1, "selectionArgs":[Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v4, "MemorySettings"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private deleteDir(Ljava/io/File;)Z
    .locals 5
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 241
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "children":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 243
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 244
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 245
    .local v2, "success":Z
    if-nez v2, :cond_0

    .line 246
    const/4 v3, 0x0

    .line 251
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :goto_1
    return v3

    .line 243
    .restart local v1    # "i":I
    .restart local v2    # "success":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_1
.end method

.method private execDeleteFile()V
    .locals 9

    .prologue
    .line 181
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-virtual {v6}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 182
    .local v4, "lv":Landroid/widget/ListView;
    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 183
    .local v1, "checkedItems":Landroid/util/SparseBooleanArray;
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-virtual {v6}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    .line 184
    .local v0, "checkedCount":I
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v6}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v6

    if-le v0, v6, :cond_0

    .line 185
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checked item counts do not match. checkedCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", dataSize: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 188
    :cond_0
    iget v6, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-lez v6, :cond_4

    .line 189
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v5, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v6, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-ge v3, v6, :cond_3

    .line 191
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 190
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    :cond_1
    sget-boolean v6, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->LOGV:Z

    if-eqz v6, :cond_2

    .line 196
    const-string v6, "MemorySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v8}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_2
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v6}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v2, "file":Ljava/io/File;
    new-instance v6, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$3;

    invoke-direct {v6, p0, v2}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$3;-><init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;Ljava/io/File;)V

    invoke-virtual {v6}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$3;->start()V

    .line 210
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v6}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 212
    .end local v2    # "file":Ljava/io/File;
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v6}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->removeAll(Ljava/util/List;)V

    .line 213
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v6}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->notifyDataSetChanged()V

    .line 214
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v6}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v6

    iput v6, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    .line 216
    .end local v3    # "i":I
    .end local v5    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_4
    return-void
.end method

.method private showDeleteConfirmation(Landroid/view/ActionMode;)V
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 165
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v2, 0x7f0c0b82

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0c11

    new-instance v4, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$2;

    invoke-direct {v4, p0, p1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$2;-><init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;Landroid/view/ActionMode;)V

    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0c12

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 177
    .local v1, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 178
    return-void
.end method

.method private updateMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 295
    const v1, 0x7f1204d4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mMenuSelectAll:Landroid/view/MenuItem;

    .line 296
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mMenuSelectAll:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/widget/NubiaSelectAll;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mMenuNubiaSelectAll:Lcn/nubia/commonui/widget/NubiaSelectAll;

    .line 297
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 298
    .local v0, "orientation":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mMenuSelectAll:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 300
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mMenuNubiaSelectAll:Lcn/nubia/commonui/widget/NubiaSelectAll;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-virtual {v5}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v5

    if-ne v1, v5, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcn/nubia/commonui/widget/NubiaSelectAll;->setChecked(Z)V

    .line 303
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mSelectAll:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 300
    goto :goto_0

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mMenuSelectAll:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 306
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 218
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v7

    .line 219
    .local v7, "lv":Landroid/widget/ListView;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 234
    :goto_0
    return v3

    .line 221
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->showDeleteConfirmation(Landroid/view/ActionMode;)V

    goto :goto_0

    .line 225
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-virtual {v2}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    move v6, v3

    .line 227
    .local v6, "checked":Z
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 228
    invoke-virtual {v7, v0, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 225
    .end local v0    # "i":I
    .end local v6    # "checked":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 231
    .restart local v0    # "i":I
    .restart local v6    # "checked":Z
    :cond_1
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x7f1204d3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x1

    .line 130
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # setter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mActionMode:Z
    invoke-static {v3, v6}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$102(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;Z)Z

    .line 131
    move-object v0, p1

    .line 132
    .local v0, "actionMode":Landroid/view/ActionMode;
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040171

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 134
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 135
    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mTitleView:Landroid/widget/TextView;

    .line 136
    const v3, 0x1020010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mSummaryView:Landroid/widget/TextView;

    .line 137
    const v3, 0x7f120362

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mSelectAll:Landroid/widget/TextView;

    .line 138
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mSelectAll:Landroid/widget/TextView;

    new-instance v4, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$1;

    invoke-direct {v4, p0, v0}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback$1;-><init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;Landroid/view/ActionMode;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-virtual {v3}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 155
    .local v1, "inflater":Landroid/view/MenuInflater;
    const v3, 0x7f140003

    invoke-virtual {v1, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 156
    invoke-direct {p0, p2}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->updateMenu(Landroid/view/Menu;)V

    .line 157
    return v6
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mActionMode:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$102(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;Z)Z

    .line 269
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 14
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 273
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-virtual {v5}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 274
    .local v3, "lv":Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v4

    .line 275
    .local v4, "numChecked":I
    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    .line 276
    .local v0, "allChekced":Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$500(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v11}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 280
    .local v1, "checkedItems":Landroid/util/SparseBooleanArray;
    const-wide/16 v6, 0x0

    .line 281
    .local v6, "selectedDataSize":J
    if-lez v4, :cond_2

    .line 282
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v5, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-ge v2, v5, :cond_2

    .line 283
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 285
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v5

    iget-wide v8, v5, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    add-long/2addr v6, v8

    .line 282
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 275
    .end local v0    # "allChekced":Z
    .end local v1    # "checkedItems":Landroid/util/SparseBooleanArray;
    .end local v2    # "i":I
    .end local v6    # "selectedDataSize":J
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 289
    .restart local v0    # "allChekced":Z
    .restart local v1    # "checkedItems":Landroid/util/SparseBooleanArray;
    .restart local v6    # "selectedDataSize":J
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mSummaryView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$600(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    invoke-static {v11, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v12}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getDataSize()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method
