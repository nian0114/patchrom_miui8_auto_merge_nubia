.class public Lcom/android/settings_ex/MediaFormat;
.super Landroid/app/Activity;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalTextView:Landroid/widget/TextView;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mInitiateTextView:Landroid/widget/TextView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "MediaFormat"

    sput-object v0, Lcom/android/settings_ex/MediaFormat;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 107
    new-instance v0, Lcom/android/settings_ex/MediaFormat$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/MediaFormat$1;-><init>(Lcom/android/settings_ex/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 207
    new-instance v0, Lcom/android/settings_ex/MediaFormat$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/MediaFormat$2;-><init>(Lcom/android/settings_ex/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/MediaFormat;)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/MediaFormat;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/settings_ex/MediaFormat;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/MediaFormat;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/MediaFormat;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings_ex/MediaFormat;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/MediaFormat;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/MediaFormat;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings_ex/MediaFormat;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400d0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    .line 221
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    const v1, 0x7f120219

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalButton:Landroid/widget/Button;

    .line 223
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    const v1, 0x7f120218

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    .line 225
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v0, p0}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    const v0, 0x7f0c0d9f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/MediaFormat;->setTitle(I)V

    .line 232
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    const v1, 0x7f0c0daa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 238
    :cond_1
    :goto_0
    return-void

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v0, p0}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const v0, 0x7f0c0da0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/MediaFormat;->setTitle(I)V

    .line 236
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    const v1, 0x7f0c0dab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private establishInitialState()V
    .locals 5

    .prologue
    const v4, 0x7f0c0da0

    const v3, 0x7f0c0d9f

    .line 254
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400d1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    .line 257
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    const v1, 0x7f12021a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateTextView:Landroid/widget/TextView;

    .line 259
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    const v1, 0x7f12021b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    .line 261
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 267
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v0, p0}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/MediaFormat;->setTitle(I)V

    .line 269
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateTextView:Landroid/widget/TextView;

    const v1, 0x7f0c0d9e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 277
    :cond_1
    :goto_0
    return-void

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v0, p0}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/MediaFormat;->setTitle(I)V

    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateTextView:Landroid/widget/TextView;

    const v1, 0x7f0c0da1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 275
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public static isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z
    .locals 4
    .param p0, "volumeObj"    # Landroid/os/storage/StorageVolume;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 87
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 93
    .local v1, "resourcesObj":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0da8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 100
    .local v0, "isUicc":Z
    goto :goto_0
.end method

.method public static isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z
    .locals 6
    .param p0, "volumeObj"    # Landroid/os/storage/StorageVolume;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 68
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v4

    .line 73
    :cond_1
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v2

    .line 74
    .local v2, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "fsUuid":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 79
    .local v3, "volumeInfo":Landroid/os/storage/VolumeInfo;
    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 83
    .local v0, "diskInfo":Landroid/os/storage/DiskInfo;
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v4

    goto :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 173
    const v0, 0x7f0c0da9

    .line 175
    .local v0, "explanationResId":I
    const v0, 0x7f0c0da9

    .line 176
    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v1, p0}, Lcom/android/settings_ex/MediaFormat;->isUsbStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    const v0, 0x7f0c0dae

    .line 182
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v1, p0}, Lcom/android/settings_ex/MediaFormat;->isUiccStorage(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const v0, 0x7f0c0daf

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 187
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 188
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 193
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 194
    invoke-direct {p0}, Lcom/android/settings_ex/MediaFormat;->establishFinalConfirmationState()V

    goto :goto_0

    .line 195
    :cond_1
    if-nez p2, :cond_2

    .line 196
    invoke-virtual {p0}, Lcom/android/settings_ex/MediaFormat;->finish()V

    goto :goto_0

    .line 198
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/MediaFormat;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 281
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 283
    iput-object v1, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    .line 284
    iput-object v1, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    .line 285
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    .line 287
    invoke-virtual {p0}, Lcom/android/settings_ex/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "storage_volume"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    iput-object v1, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 289
    invoke-direct {p0}, Lcom/android/settings_ex/MediaFormat;->establishInitialState()V

    .line 291
    invoke-virtual {p0}, Lcom/android/settings_ex/MediaFormat;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 292
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 293
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 295
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 328
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 329
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 301
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 306
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 303
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/MediaFormat;->finish()V

    .line 304
    const/4 v0, 0x1

    goto :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 316
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 318
    invoke-virtual {p0}, Lcom/android/settings_ex/MediaFormat;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/android/settings_ex/MediaFormat;->establishInitialState()V

    .line 321
    :cond_0
    return-void
.end method
