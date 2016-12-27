.class public Lcom/android/settings_ex/profile/ProfileInitService;
.super Landroid/app/Service;
.source "ProfileInitService.java"


# static fields
.field private static final mProfileInfo:[[Ljava/lang/String;


# instance fields
.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    const/16 v0, 0xc

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "zte_Profile_powersaving_screen_powersave_enabled"

    aput-object v2, v1, v4

    const-string v2, "1"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "zte_Profile_powersaving_shutdown_all_connection_enabled"

    aput-object v2, v1, v4

    const-string v2, "1"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "zte_Profile_powersaving_haptic_feedback_tag_enabled"

    aput-object v2, v1, v4

    const-string v2, "1"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "zte_Profile_powersaving_cpu_limit_enabled"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "zte_Profile_powersaving_low_powersaving_enabled"

    aput-object v3, v2, v4

    const-string v3, "1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "zte_Powersaving_Profile_isactive"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "zte_Profile_powersaving_original_resting_time"

    aput-object v3, v2, v4

    const-string v3, "30*1000"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "zte_Profile_powersaving_low_powersaving_enabled"

    aput-object v3, v2, v4

    const-string v3, "1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "zte_Profile_sleep_deepsleep_enabled"

    aput-object v3, v2, v4

    const-string v3, "1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "zte_Profile_sleep_white_list_enabled"

    aput-object v3, v2, v4

    const-string v3, "1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "zte_Pocket_Profile_isenable"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "zte_profile_deep_sleep_music"

    aput-object v3, v2, v4

    const-string v3, "0:1:2:3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/profile/ProfileInitService;->mProfileInfo:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/ProfileInitService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/profile/ProfileInitService;->mResolver:Landroid/content/ContentResolver;

    .line 39
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 43
    iget-object v2, p0, Lcom/android/settings_ex/profile/ProfileInitService;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/settings_ex/profile/ProfileInitService;->mProfileInfo:[[Ljava/lang/String;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/ProfileInitService;->stopSelf()V

    .line 52
    :goto_0
    return v7

    .line 48
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v2, Lcom/android/settings_ex/profile/ProfileInitService;->mProfileInfo:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 49
    iget-object v2, p0, Lcom/android/settings_ex/profile/ProfileInitService;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/settings_ex/profile/ProfileInitService;->mProfileInfo:[[Ljava/lang/String;

    aget-object v3, v3, v1

    aget-object v3, v3, v6

    sget-object v4, Lcom/android/settings_ex/profile/ProfileInitService;->mProfileInfo:[[Ljava/lang/String;

    aget-object v4, v4, v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/profile/ProfileInitService;->stopSelf()V

    goto :goto_0
.end method
