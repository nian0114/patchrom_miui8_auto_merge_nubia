.class Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
.super Landroid/widget/BaseAdapter;
.source "MiscFilesHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MemoryMearurementAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSize:J

.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;Landroid/app/Activity;)V
    .locals 8
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 312
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    .line 313
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    .line 317
    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mContext:Landroid/content/Context;

    .line 318
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "storage_volume"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 320
    .local v3, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-static {p2, v3}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    move-result-object v2

    .line 322
    .local v2, "mMeasurement":Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
    if-nez v2, :cond_1

    .line 329
    :cond_0
    return-void

    .line 323
    :cond_1
    iget-object v4, v2, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    .line 324
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 325
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    .line 326
    .local v1, "info":Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;
    iget-wide v4, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    iget-wide v6, v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDataSize()J
    .locals 2

    .prologue
    .line 363
    iget-wide v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    return-wide v0
.end method

.method public getItem(I)Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 339
    :cond_0
    const/4 v0, 0x0

    .line 341
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 347
    :cond_0
    const-wide/16 v0, 0x0

    .line 349
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    iget-wide v0, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;->mId:J

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 373
    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$700(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f04017d

    invoke-virtual {v4, v6, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;

    move-object v3, v4

    .line 376
    .end local p2    # "convertView":Landroid/view/View;
    .local v3, "view":Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v0

    .line 377
    .local v0, "item":Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;
    iget-object v4, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;->setFileName(Ljava/lang/String;)V

    .line 378
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mContext:Landroid/content/Context;

    iget-wide v6, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;->setFileSize(Ljava/lang/String;)V

    move-object v2, p3

    .line 379
    check-cast v2, Landroid/widget/ListView;

    .line 380
    .local v2, "listView":Landroid/widget/ListView;
    move v1, p1

    .line 381
    .local v1, "listPosition":I
    invoke-virtual {v3}, Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v6

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->this$0:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    # getter for: Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mActionMode:Z
    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 382
    invoke-virtual {v3}, Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v4

    new-instance v5, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;-><init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Landroid/widget/ListView;I)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 390
    new-instance v4, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;

    invoke-direct {v4, p0, v2, v1, v3}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;-><init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Landroid/widget/ListView;ILcom/android/settings_ex/deviceinfo/FileItemInfoLayout;)V

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 400
    new-instance v4, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;

    invoke-direct {v4, p0, v2, v1, v3}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;-><init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Landroid/widget/ListView;ILcom/android/settings_ex/deviceinfo/FileItemInfoLayout;)V

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    return-object v3

    .line 373
    .end local v0    # "item":Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;
    .end local v1    # "listPosition":I
    .end local v2    # "listView":Landroid/widget/ListView;
    .end local v3    # "view":Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    check-cast p2, Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;

    move-object v3, p2

    goto :goto_0

    .line 381
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "item":Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;
    .restart local v1    # "listPosition":I
    .restart local v2    # "listView":Landroid/widget/ListView;
    .restart local v3    # "view":Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;
    :cond_1
    const/16 v4, 0x8

    goto :goto_1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 368
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 369
    return-void
.end method

.method public removeAll(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, "objs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 360
    :cond_0
    return-void

    .line 356
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 357
    .local v1, "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 358
    iget-wide v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    check-cast v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    .end local v1    # "o":Ljava/lang/Object;
    iget-wide v4, v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    goto :goto_0
.end method
