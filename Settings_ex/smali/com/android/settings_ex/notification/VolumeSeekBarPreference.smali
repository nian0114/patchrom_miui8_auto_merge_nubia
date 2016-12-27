.class public Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
.super Lcn/nubia/commonui/preference/SeekBarPreference;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

.field private mIconResId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mMuteIconResId:I

.field private mMuted:Z

.field private mNubiaPreference:Lnubia/preference/IPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStopped:Z

.field private mStream:I

.field private mSuppressionText:Ljava/lang/String;

.field private mSuppressionTextView:Landroid/widget/TextView;

.field private mVolumizer:Landroid/preference/SeekBarVolumizer;

.field private mZenMuted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 78
    const v0, 0x7f040142

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->setLayoutResource(I)V

    .line 80
    invoke-static {p1}, Lnubia/util/UiUtils;->isNubiaUi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnubia/preference/NubiaPreference;

    invoke-direct {v0, p1}, Lnubia/preference/NubiaPreference;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mNubiaPreference:Lnubia/preference/IPreference;

    .line 83
    return-void

    .line 80
    :cond_0
    new-instance v0, Lnubia/preference/ProtoPreference;

    invoke-direct {v0, p1}, Lnubia/preference/ProtoPreference;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mMuted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mMuted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mZenMuted:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mZenMuted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->updateIconView()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 236
    const-string v1, "/system/media/audio/ringtones/wonderful_musicbox.ogg"

    .line 237
    .local v1, "mediaPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 242
    :goto_0
    return-object v2

    .line 241
    :cond_0
    const-string v2, "VolumeSeekBarPreference"

    const-string v3, "wonderful_musicbox does not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/high16 v3, 0x7f090000

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 133
    iget-object v3, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v3, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 135
    new-instance v2, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$1;-><init>(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)V

    .line 156
    .local v2, "sbvc":Landroid/preference/SeekBarVolumizer$Callback;
    iget v3, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    if-ne v3, v5, :cond_2

    .line 157
    new-instance v3, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$2;-><init>(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)V

    iput-object v3, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    iget v3, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v1

    .line 178
    .local v1, "sampleUri":Landroid/net/Uri;
    :goto_1
    iget v3, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    if-ne v3, v5, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 182
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultRingtoneSubIdByUri(Landroid/net/Uri;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 185
    if-nez v1, :cond_3

    .line 186
    const-string v3, "content://media/internal/audio/media/10000"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 189
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    if-nez v3, :cond_4

    .line 190
    new-instance v3, Landroid/preference/SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    invoke-direct {v3, v4, v5, v1, v2}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    iput-object v3, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    .line 192
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v3}, Landroid/preference/SeekBarVolumizer;->start()V

    .line 193
    iget-object v3, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    iget-object v4, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 194
    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->updateIconView()V

    .line 195
    iget-object v3, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    iget v4, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    iget-object v5, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 196
    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->updateSuppressionText()V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 198
    iget-object v3, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 199
    iget-object v3, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v3}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    goto/16 :goto_0

    .line 177
    .end local v1    # "sampleUri":Landroid/net/Uri;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateIconView()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 212
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconResId:I

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 214
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mMuted:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mZenMuted:Z

    if-nez v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateSuppressionText()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 254
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 257
    .local v0, "showSuppression":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 260
    .end local v0    # "showSuppression":Z
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 256
    goto :goto_0

    .restart local v0    # "showSuppression":Z
    :cond_2
    move v2, v3

    .line 257
    goto :goto_1

    :cond_3
    move v3, v1

    .line 258
    goto :goto_2
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stop()V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 270
    :cond_1
    return-void
.end method

.method public onActivityStop()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStopped:Z

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 117
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcn/nubia/commonui/preference/SeekBarPreference;->onBindView(Landroid/view/View;)V

    .line 122
    iget v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    if-nez v0, :cond_0

    .line 123
    const-string v0, "VolumeSeekBarPreference"

    const-string v1, "No stream found, not binding volumizer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-void

    .line 126
    :cond_0
    const v0, 0x1020392

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 127
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    .line 128
    const v0, 0x7f120306

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    .line 129
    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->init()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 206
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/commonui/preference/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 207
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    iget v1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    invoke-interface {v0, v1, p2}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 208
    return-void
.end method

.method public setCallback(Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    .line 103
    return-void
.end method

.method public setStream(I)V
    .locals 0
    .param p1, "stream"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I

    .line 99
    return-void
.end method

.method public showIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 224
    iget v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconResId:I

    if-ne v0, p1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    iput p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mIconResId:I

    .line 226
    invoke-direct {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->updateIconView()V

    goto :goto_0
.end method
