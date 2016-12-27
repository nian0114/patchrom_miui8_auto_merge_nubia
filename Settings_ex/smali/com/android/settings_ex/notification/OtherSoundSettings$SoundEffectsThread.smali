.class Lcom/android/settings_ex/notification/OtherSoundSettings$SoundEffectsThread;
.super Ljava/lang/Object;
.source "OtherSoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/OtherSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundEffectsThread"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p2, p0, Lcom/android/settings_ex/notification/OtherSoundSettings$SoundEffectsThread;->mValue:I

    .line 104
    iput-object p1, p0, Lcom/android/settings_ex/notification/OtherSoundSettings$SoundEffectsThread;->mContext:Landroid/content/Context;

    .line 105
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/settings_ex/notification/OtherSoundSettings$SoundEffectsThread;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/settings_ex/notification/OtherSoundSettings$SoundEffectsThread;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 114
    .local v0, "am":Landroid/media/AudioManager;
    iget v1, p0, Lcom/android/settings_ex/notification/OtherSoundSettings$SoundEffectsThread;->mValue:I

    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 120
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    :goto_0
    return-void

    .line 117
    .restart local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_0
.end method
