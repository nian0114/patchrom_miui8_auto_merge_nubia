.class public Lcom/android/settings_ex/RingtonePickerActivity;
.super Lcn/nubia/commonui/widget/NubiaDialogActivity;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;
    }
.end annotation


# static fields
.field private static sPlayingRingtone:Landroid/media/Ringtone;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAudioFocusChangeListener:Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mClickedPos:I

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentRingtone:Landroid/media/Ringtone;

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mExistingUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mHasDefaultItem:Z

.field private mHasSilentItem:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSampleRingtonePos:I

.field private mSilentPos:I

.field private mStaticItemCount:I

.field private mType:I

.field private mUriForDefaultItem:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 30
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;-><init>()V

    .line 50
    iput v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mSilentPos:I

    .line 53
    iput v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mDefaultRingtonePos:I

    .line 56
    iput v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mClickedPos:I

    .line 59
    iput v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mSampleRingtonePos:I

    .line 95
    new-instance v0, Lcom/android/settings_ex/RingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RingtonePickerActivity$1;-><init>(Lcom/android/settings_ex/RingtonePickerActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 432
    new-instance v0, Lcom/android/settings_ex/RingtonePickerActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RingtonePickerActivity$3;-><init>(Lcom/android/settings_ex/RingtonePickerActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 444
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/RingtonePickerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RingtonePickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mClickedPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/RingtonePickerActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RingtonePickerActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/RingtonePickerActivity;->playRingtone(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/RingtonePickerActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RingtonePickerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RingtonePickerActivity;->finishActivity(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/RingtonePickerActivity;)Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/RingtonePickerActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mAudioFocusChangeListener:Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/RingtonePickerActivity;Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;)Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RingtonePickerActivity;
    .param p1, "x1"    # Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mAudioFocusChangeListener:Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/RingtonePickerActivity;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/RingtonePickerActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/RingtonePickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/RingtonePickerActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings_ex/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    return-void
.end method

.method private addDefaultRingtoneItem(Landroid/widget/ListView;)I
    .locals 2
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 318
    iget v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 319
    const v0, 0x7f0c0c3d

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    .line 324
    :goto_0
    return v0

    .line 320
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 321
    const v0, 0x7f0c0c3e

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    goto :goto_0

    .line 324
    :cond_1
    const v0, 0x7f0c0c3c

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    goto :goto_0
.end method

.method private addSilentItem(Landroid/widget/ListView;)I
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 328
    const v0, 0x10403a2

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addStaticItem(Landroid/widget/ListView;I)I
    .locals 5
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "textResId"    # I

    .prologue
    const/4 v4, 0x0

    .line 305
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040173

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 308
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 310
    .local v0, "padding":I
    invoke-virtual {v1, v0, v4, v0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 311
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 312
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 313
    iget v2, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mStaticItemCount:I

    .line 314
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method private finishActivity(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    .prologue
    .line 195
    iget-object v2, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 197
    if-eqz p1, :cond_2

    .line 198
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 199
    .local v0, "resultIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 201
    .local v1, "uri":Landroid/net/Uri;
    iget v2, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mClickedPos:I

    iget v3, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v2, v3, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 212
    :goto_0
    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 214
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings_ex/RingtonePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 218
    .end local v0    # "resultIntent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePickerActivity;->finish()V

    .line 219
    return-void

    .line 204
    .restart local v0    # "resultIntent":Landroid/content/Intent;
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_0
    iget v2, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mClickedPos:I

    iget v3, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mSilentPos:I

    if-ne v2, v3, :cond_1

    .line 206
    const/4 v1, 0x0

    goto :goto_0

    .line 208
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v3, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mClickedPos:I

    invoke-direct {p0, v3}, Lcom/android/settings_ex/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 216
    .end local v0    # "resultIntent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/RingtonePickerActivity;->setResult(I)V

    goto :goto_1
.end method

.method private getListPosition(I)I
    .locals 1
    .param p1, "ringtoneManagerPos"    # I

    .prologue
    .line 424
    if-gez p1, :cond_0

    .line 427
    .end local p1    # "ringtoneManagerPos":I
    :goto_0
    return p1

    .restart local p1    # "ringtoneManagerPos":I
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mStaticItemCount:I

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method private getRingtoneManagerPosition(I)I
    .locals 1
    .param p1, "listPos"    # I

    .prologue
    .line 418
    iget v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mStaticItemCount:I

    sub-int v0, p1, v0

    return v0
.end method

.method private onPrepareListView(Landroid/widget/ListView;)V
    .locals 4
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 222
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 223
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 224
    iget-boolean v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v1, :cond_0

    .line 225
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RingtonePickerActivity;->addDefaultRingtoneItem(Landroid/widget/ListView;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mDefaultRingtonePos:I

    .line 227
    iget v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mClickedPos:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mDefaultRingtonePos:I

    iput v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mClickedPos:I

    .line 233
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mHasSilentItem:Z

    if-eqz v1, :cond_1

    .line 234
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RingtonePickerActivity;->addSilentItem(Landroid/widget/ListView;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mSilentPos:I

    .line 237
    iget v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mClickedPos:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 238
    iget v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mSilentPos:I

    iput v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mClickedPos:I

    .line 242
    :cond_1
    iget v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mClickedPos:I

    if-ne v1, v2, :cond_2

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v2, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/RingtonePickerActivity;->getListPosition(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mClickedPos:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_2
    :goto_0
    iget v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p1, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 251
    iget v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 252
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 253
    iget-object v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 254
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private playRingtone(II)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "delayMs"    # I

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 345
    iput p1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mSampleRingtonePos:I

    .line 346
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 347
    return-void
.end method

.method private saveAnyPlayingRingtone()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    sput-object v0, Lcom/android/settings_ex/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    sput-object v0, Lcom/android/settings_ex/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    goto :goto_0
.end method

.method private stopAnyPlayingRingtone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 399
    sget-object v0, Lcom/android/settings_ex/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    sget-object v0, Lcom/android/settings_ex/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 402
    :cond_0
    sput-object v2, Lcom/android/settings_ex/RingtonePickerActivity;->sPlayingRingtone:Landroid/media/Ringtone;

    .line 404
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mAudioFocusChangeListener:Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;

    if-eqz v0, :cond_3

    .line 412
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mAudioFocusChangeListener:Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 413
    iput-object v2, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mAudioFocusChangeListener:Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;

    .line 415
    :cond_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v2, -0x1

    const/4 v5, 0x1

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 110
    .local v7, "intent":Landroid/content/Intent;
    const v0, 0x7f0d005c

    const v1, 0x7f0d005b

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/RingtonePickerActivity;->setThemes(II)V

    .line 111
    invoke-super {p0, p1}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindow;

    const v1, 0x7f0e0065

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 113
    const v0, 0x7f040131

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/RingtonePickerActivity;->setContentView(I)V

    .line 114
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/RingtonePickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    .line 122
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mHasDefaultItem:Z

    .line 124
    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 127
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 130
    :cond_0
    if-eqz p1, :cond_1

    .line 131
    const-string v0, "clicked_pos"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mClickedPos:I

    .line 135
    :cond_1
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mHasSilentItem:Z

    .line 139
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 142
    const-string v0, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mType:I

    .line 143
    iget v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mType:I

    if-eq v0, v2, :cond_2

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mType:I

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 147
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 153
    :cond_3
    const-string v0, "RingtonePickerActivity"

    const-string v1, "number of rows in the cursor is more than 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePickerActivity;->finish()V

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/RingtonePickerActivity;->setVolumeControlStream(I)V

    .line 162
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .line 164
    const-string v0, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 166
    .local v8, "title":Ljava/lang/CharSequence;
    if-nez v8, :cond_5

    .line 167
    const v0, 0x10403a3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 169
    :cond_5
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/RingtonePickerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/RingtonePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    .line 172
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f040173

    iget-object v3, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v4, v9

    new-array v5, v5, [I

    const v1, 0x1020016

    aput v1, v5, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RingtonePickerActivity;->onPrepareListView(Landroid/widget/ListView;)V

    .line 178
    new-instance v0, Lcom/android/settings_ex/RingtonePickerActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RingtonePickerActivity$2;-><init>(Lcom/android/settings_ex/RingtonePickerActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/RingtonePickerActivity;->setOnButtonClickListener(Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;)V

    .line 190
    return-void

    .line 148
    .end local v8    # "title":Ljava/lang/CharSequence;
    :catch_0
    move-exception v6

    .line 149
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "RingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCursor error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePickerActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 288
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_0
    invoke-super {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->onDestroy()V

    .line 292
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 337
    const/16 v0, 0x12c

    invoke-direct {p0, p3, v0}, Lcom/android/settings_ex/RingtonePickerActivity;->playRingtone(II)V

    .line 338
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 341
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 263
    invoke-super {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->onPause()V

    .line 264
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePickerActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/android/settings_ex/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 267
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 258
    invoke-super {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->onResume()V

    .line 259
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 271
    invoke-super {p0, p1}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 272
    const-string v0, "clicked_pos"

    iget v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->onStop()V

    .line 278
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePickerActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/android/settings_ex/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/RingtonePickerActivity;->saveAnyPlayingRingtone()V

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 350
    invoke-direct {p0}, Lcom/android/settings_ex/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 351
    iget v2, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v3, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mSilentPos:I

    if-ne v2, v3, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget v2, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v3, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v2, v3, :cond_4

    .line 357
    iget-object v2, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-nez v2, :cond_2

    .line 358
    iget-object v2, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 364
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v2, :cond_3

    .line 365
    iget-object v2, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    iget-object v3, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v3}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 367
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 368
    .local v1, "ringtone":Landroid/media/Ringtone;
    iput-object v4, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    .line 380
    :goto_1
    if-eqz v1, :cond_0

    .line 382
    iget-object v2, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 383
    new-instance v2, Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;

    invoke-direct {v2, p0, v4}, Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;-><init>(Lcom/android/settings_ex/RingtonePickerActivity;Lcom/android/settings_ex/RingtonePickerActivity$1;)V

    iput-object v2, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mAudioFocusChangeListener:Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;

    .line 384
    iget-object v2, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mAudioFocusChangeListener:Lcom/android/settings_ex/RingtonePickerActivity$AudioFocusChangeListener;

    iget-object v4, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 386
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 371
    .end local v1    # "ringtone":Landroid/media/Ringtone;
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v3, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v3}, Lcom/android/settings_ex/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 377
    .restart local v1    # "ringtone":Landroid/media/Ringtone;
    :goto_2
    iput-object v1, p0, Lcom/android/settings_ex/RingtonePickerActivity;->mCurrentRingtone:Landroid/media/Ringtone;

    goto :goto_1

    .line 373
    .end local v1    # "ringtone":Landroid/media/Ringtone;
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 375
    const/4 v1, 0x0

    .restart local v1    # "ringtone":Landroid/media/Ringtone;
    goto :goto_2
.end method
