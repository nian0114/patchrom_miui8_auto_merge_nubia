.class final Lcom/android/settings_ex/notification/VolumeSeekBarSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "VolumeSeekBarSettings.java"

# interfaces
.implements Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/VolumeSeekBarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumePreferenceCallback"
.end annotation


# instance fields
.field private mCurrent:Landroid/preference/SeekBarVolumizer;

.field final synthetic this$0:Lcom/android/settings_ex/notification/VolumeSeekBarSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/notification/VolumeSeekBarSettings;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/notification/VolumeSeekBarSettings;Lcom/android/settings_ex/notification/VolumeSeekBarSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/notification/VolumeSeekBarSettings;
    .param p2, "x1"    # Lcom/android/settings_ex/notification/VolumeSeekBarSettings$1;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/VolumeSeekBarSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings_ex/notification/VolumeSeekBarSettings;)V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 1
    .param p1, "sbv"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eq v0, p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    .line 118
    return-void
.end method

.method public onStreamValueChanged(II)V
    .locals 1
    .param p1, "stream"    # I
    .param p2, "progress"    # I

    .prologue
    .line 122
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarSettings;

    # invokes: Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->updateRingOrNotificationIcon(I)V
    invoke-static {v0, p2}, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->access$100(Lcom/android/settings_ex/notification/VolumeSeekBarSettings;I)V

    .line 125
    :cond_0
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 131
    :cond_0
    return-void
.end method
