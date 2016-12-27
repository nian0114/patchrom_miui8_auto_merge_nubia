.class public Lcom/android/settings_ex/TimeOutLocking;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "TimeOutLocking.java"


# instance fields
.field private entries_tidy:[Ljava/lang/CharSequence;

.field private entry_max:I

.field private mTimeOutLockingObserver:Landroid/database/ContentObserver;

.field private mTimeoutLockingPref:Lcom/android/settings_ex/TimeoutLockingPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 73
    new-instance v0, Lcom/android/settings_ex/TimeOutLocking$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/TimeOutLocking$1;-><init>(Lcom/android/settings_ex/TimeOutLocking;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/TimeOutLocking;->mTimeOutLockingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/TimeOutLocking;)Lcom/android/settings_ex/TimeoutLockingPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TimeOutLocking;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings_ex/TimeOutLocking;->mTimeoutLockingPref:Lcom/android/settings_ex/TimeoutLockingPreference;

    return-object v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x57

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings_ex/TimeOutLocking;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "entries"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/TimeOutLocking;->entries_tidy:[Ljava/lang/CharSequence;

    .line 40
    iget-object v0, p0, Lcom/android/settings_ex/TimeOutLocking;->entries_tidy:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/TimeOutLocking;->entries_tidy:[Ljava/lang/CharSequence;

    array-length v0, v0

    iput v0, p0, Lcom/android/settings_ex/TimeOutLocking;->entry_max:I

    .line 43
    :cond_0
    const v0, 0x7f08006f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/TimeOutLocking;->addPreferencesFromResource(I)V

    .line 44
    const-string v0, "timeout_locking"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/TimeOutLocking;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/TimeoutLockingPreference;

    iput-object v0, p0, Lcom/android/settings_ex/TimeOutLocking;->mTimeoutLockingPref:Lcom/android/settings_ex/TimeoutLockingPreference;

    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/TimeOutLocking;->mTimeoutLockingPref:Lcom/android/settings_ex/TimeoutLockingPreference;

    iget v1, p0, Lcom/android/settings_ex/TimeOutLocking;->entry_max:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/TimeoutLockingPreference;->setDisplayEntriesVolume(I)V

    .line 46
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 71
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/TimeOutLocking;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/TimeOutLocking;->mTimeOutLockingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 66
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings_ex/TimeOutLocking;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 52
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings_ex/TimeOutLocking;->mTimeoutLockingPref:Lcom/android/settings_ex/TimeoutLockingPreference;

    if-eqz v1, :cond_0

    .line 53
    const-string v1, "lock_screen_lock_after_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings_ex/TimeOutLocking;->mTimeOutLockingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 57
    :cond_0
    return-void
.end method
