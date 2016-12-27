.class public Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;
.super Landroid/app/Service;
.source "ProfilePowersavingBroadcastService.java"


# instance fields
.field private mAutoRotateScreenObserver:Landroid/database/ContentObserver;

.field private mHapticFeedbackObserver:Landroid/database/ContentObserver;

.field private mMinBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mMinBrightnessObserver:Landroid/database/ContentObserver;

.field private mProfileManager:Lztemt/profile/ProfileManager;

.field private mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

.field private mShortestRestingTimeObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    new-instance v0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService$1;-><init>(Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mHapticFeedbackObserver:Landroid/database/ContentObserver;

    .line 57
    new-instance v0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService$2;-><init>(Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mShortestRestingTimeObserver:Landroid/database/ContentObserver;

    .line 81
    new-instance v0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService$3;-><init>(Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mMinBrightnessObserver:Landroid/database/ContentObserver;

    .line 101
    new-instance v0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService$4;-><init>(Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mMinBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 134
    new-instance v0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService$5;-><init>(Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mAutoRotateScreenObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->refreshHapticFeedback()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->refreshShortestRestingTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->refreshMinBrightness()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->refreshMinBrightnessMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->refreshAutoRotateScreen()V

    return-void
.end method

.method private isBrightnessChanged()Z
    .locals 7

    .prologue
    .line 126
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 127
    .local v3, "pm":Landroid/os/PowerManager;
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v2

    .line 128
    .local v2, "maxbrightness":I
    div-int/lit8 v0, v2, 0x5

    .line 129
    .local v0, "brightness":I
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness"

    const/16 v6, 0x64

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 130
    .local v1, "currentbrightness":I
    if-eq v0, v1, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private refreshAutoRotateScreen()V
    .locals 4

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 148
    .local v0, "autoRotateScreen":I
    iget-object v1, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v2, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v1, v2}, Lztemt/profile/ProfileManager;->isProfileActivate(Lztemt/profile/Profile$Scenario;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v1}, Lztemt/profile/ProfilePowersavingImpl;->getScreenPowersaveTagEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    sget-object v2, Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;->AUTOROTATESCREEN:Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;

    invoke-virtual {v1, v2}, Lztemt/profile/ProfilePowersavingImpl;->updateProfileState(Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V

    .line 153
    iget-object v1, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    sget-object v2, Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;->AUTOROTATESCREEN:Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;

    invoke-virtual {v1, v2}, Lztemt/profile/ProfilePowersavingImpl;->setModifiedFlags(Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V

    .line 157
    :cond_0
    return-void
.end method

.method private refreshHapticFeedback()V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->isProfileActivate(Lztemt/profile/Profile$Scenario;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v0}, Lztemt/profile/ProfilePowersavingImpl;->getHapticFeedbackTagEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    sget-object v1, Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;->HAPTICFEEDBACK:Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfilePowersavingImpl;->updateProfileState(Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V

    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    sget-object v1, Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;->HAPTICFEEDBACK:Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfilePowersavingImpl;->setModifiedFlags(Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V

    .line 56
    :cond_0
    return-void
.end method

.method private refreshMinBrightness()V
    .locals 4

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 91
    .local v0, "brightnessMode":I
    iget-object v1, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v2, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v1, v2}, Lztemt/profile/ProfileManager;->isProfileActivate(Lztemt/profile/Profile$Scenario;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v1}, Lztemt/profile/ProfilePowersavingImpl;->getScreenPowersaveTagEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->isBrightnessChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    sget-object v2, Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;->MINBRIGHTNESS:Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;

    invoke-virtual {v1, v2}, Lztemt/profile/ProfilePowersavingImpl;->updateProfileState(Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V

    .line 96
    iget-object v1, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    sget-object v2, Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;->MINBRIGHTNESS:Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;

    invoke-virtual {v1, v2}, Lztemt/profile/ProfilePowersavingImpl;->setModifiedFlags(Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V

    .line 100
    :cond_0
    return-void
.end method

.method private refreshMinBrightnessMode()V
    .locals 4

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 114
    .local v0, "brightnessMode":I
    iget-object v1, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v2, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v1, v2}, Lztemt/profile/ProfileManager;->isProfileActivate(Lztemt/profile/Profile$Scenario;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v1}, Lztemt/profile/ProfilePowersavingImpl;->getScreenPowersaveTagEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    sget-object v2, Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;->MINBRIGHTNESS:Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;

    invoke-virtual {v1, v2}, Lztemt/profile/ProfilePowersavingImpl;->updateProfileState(Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V

    .line 120
    iget-object v1, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    sget-object v2, Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;->MINBRIGHTNESS:Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;

    invoke-virtual {v1, v2}, Lztemt/profile/ProfilePowersavingImpl;->setModifiedFlags(Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V

    .line 124
    :cond_0
    return-void
.end method

.method private refreshProfileIfNeed()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->refreshHapticFeedback()V

    .line 169
    invoke-direct {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->refreshShortestRestingTime()V

    .line 170
    invoke-direct {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->refreshMinBrightnessMode()V

    .line 171
    invoke-direct {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->refreshMinBrightness()V

    .line 172
    invoke-direct {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->refreshAutoRotateScreen()V

    .line 173
    return-void
.end method

.method private refreshShortestRestingTime()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->isProfileActivate(Lztemt/profile/Profile$Scenario;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    invoke-virtual {v0}, Lztemt/profile/ProfilePowersavingImpl;->getScreenPowersaveTagEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x3a98

    if-eq v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    sget-object v1, Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;->SHORTESTRESTINGTIME:Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfilePowersavingImpl;->updateProfileState(Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V

    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    sget-object v1, Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;->SHORTESTRESTINGTIME:Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfilePowersavingImpl;->setModifiedFlags(Lztemt/profile/ProfilePowersavingSettings$PowersavingArgsType;)V

    .line 80
    :cond_0
    return-void
.end method

.method private register()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 186
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mHapticFeedbackObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mShortestRestingTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mMinBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mMinBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mAutoRotateScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 211
    return-void
.end method

.method private unregister()V
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mHapticFeedbackObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mShortestRestingTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mMinBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mMinBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mAutoRotateScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 219
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 161
    invoke-static {p0}, Lztemt/profile/ProfileManagerImpl;->getInstance(Landroid/content/Context;)Lztemt/profile/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mProfileManager:Lztemt/profile/ProfileManager;

    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mProfileManager:Lztemt/profile/ProfileManager;

    sget-object v1, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v1}, Lztemt/profile/ProfileManager;->getProfile(Lztemt/profile/Profile$Scenario;)Lztemt/profile/Profile;

    move-result-object v0

    check-cast v0, Lztemt/profile/ProfilePowersavingImpl;

    iput-object v0, p0, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->mProfilePowersavingImpl:Lztemt/profile/ProfilePowersavingImpl;

    .line 163
    invoke-direct {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->refreshProfileIfNeed()V

    .line 164
    invoke-direct {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->register()V

    .line 165
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/android/settings_ex/profile/ProfilePowersavingBroadcastService;->unregister()V

    .line 177
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 178
    return-void
.end method
