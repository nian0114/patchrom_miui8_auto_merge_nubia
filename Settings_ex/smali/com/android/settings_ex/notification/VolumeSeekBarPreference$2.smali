.class Lcom/android/settings_ex/notification/VolumeSeekBarPreference$2;
.super Landroid/content/BroadcastReceiver;
.source "VolumeSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$2;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 160
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$2;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v2}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->access$000(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 161
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 163
    .local v0, "am":Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$2;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I
    invoke-static {v2}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->access$100(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 164
    .local v1, "volume":I
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$2;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->access$500(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)Landroid/widget/SeekBar;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$2;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->access$500(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 166
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$2;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->access$500(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 171
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "volume":I
    :cond_0
    :goto_0
    return-void

    .line 168
    .restart local v0    # "am":Landroid/media/AudioManager;
    .restart local v1    # "volume":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$2;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v2}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->access$000(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$2;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->mStream:I
    invoke-static {v3}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->access$100(Lcom/android/settings_ex/notification/VolumeSeekBarPreference;)I

    move-result v3

    invoke-interface {v2, v3, v1}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    goto :goto_0
.end method
