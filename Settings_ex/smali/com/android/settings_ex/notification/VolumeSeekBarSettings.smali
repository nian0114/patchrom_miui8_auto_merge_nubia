.class public Lcom/android/settings_ex/notification/VolumeSeekBarSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "VolumeSeekBarSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/VolumeSeekBarSettings$VolumePreferenceCallback;
    }
.end annotation


# instance fields
.field private mAlarmPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

.field private mContext:Landroid/content/Context;

.field private mMediaPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

.field private mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

.field private final mVolumeCallback:Lcom/android/settings_ex/notification/VolumeSeekBarSettings$VolumePreferenceCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 33
    new-instance v0, Lcom/android/settings_ex/notification/VolumeSeekBarSettings$VolumePreferenceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/notification/VolumeSeekBarSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings_ex/notification/VolumeSeekBarSettings;Lcom/android/settings_ex/notification/VolumeSeekBarSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->mVolumeCallback:Lcom/android/settings_ex/notification/VolumeSeekBarSettings$VolumePreferenceCallback;

    .line 108
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/notification/VolumeSeekBarSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/VolumeSeekBarSettings;
    .param p1, "x1"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->updateRingOrNotificationIcon(I)V

    return-void
.end method

.method private initVolumePreference(Ljava/lang/String;I)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 95
    .local v0, "volumePref":Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    iget-object v1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->mVolumeCallback:Lcom/android/settings_ex/notification/VolumeSeekBarSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;)V

    .line 96
    invoke-virtual {v0, p2}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 97
    return-object v0
.end method

.method private updateRingOrNotificationIcon(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 101
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 102
    .local v0, "am":Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    if-lez p1, :cond_0

    const v1, 0x7f0201b9

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->showIcon(I)V

    .line 106
    return-void

    .line 102
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f0201ba

    goto :goto_0

    :cond_1
    const v1, 0x7f0201bb

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 137
    const/16 v0, 0x47

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f08007c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->addPreferencesFromResource(I)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->mContext:Landroid/content/Context;

    .line 40
    const-string v0, "media_volume"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->initVolumePreference(Ljava/lang/String;I)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->mMediaPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 42
    const-string v0, "alarm_volume"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->initVolumePreference(Ljava/lang/String;I)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->mAlarmPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "ring_volume"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->initVolumePreference(Ljava/lang/String;I)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 47
    const-string v0, "notification_volume"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->removePreference(Ljava/lang/String;)V

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string v0, "notification_volume"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->initVolumePreference(Ljava/lang/String;I)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 51
    const-string v0, "ring_volume"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/settings_ex/notification/VolumeSeekBarSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/VolumeSeekBarSettings$1;-><init>(Lcom/android/settings_ex/notification/VolumeSeekBarSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 73
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 74
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 75
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->mMediaPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->destroy()V

    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->mAlarmPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->destroy()V

    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->destroy()V

    .line 88
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 89
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->mVolumeCallback:Lcom/android/settings_ex/notification/VolumeSeekBarSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/VolumeSeekBarSettings$VolumePreferenceCallback;->stopSample()V

    .line 81
    return-void
.end method
