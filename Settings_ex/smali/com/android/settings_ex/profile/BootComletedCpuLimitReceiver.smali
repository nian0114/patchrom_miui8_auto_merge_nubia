.class public Lcom/android/settings_ex/profile/BootComletedCpuLimitReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootComletedCpuLimitReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    invoke-static {p1}, Lztemt/profile/ProfileManagerImpl;->getInstance(Landroid/content/Context;)Lztemt/profile/ProfileManager;

    move-result-object v0

    .line 22
    .local v0, "mProfileManager":Lztemt/profile/ProfileManager;
    sget-object v2, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v2}, Lztemt/profile/ProfileManager;->getProfile(Lztemt/profile/Profile$Scenario;)Lztemt/profile/Profile;

    move-result-object v1

    check-cast v1, Lztemt/profile/ProfilePowersavingImpl;

    .line 24
    .local v1, "mProfilePowersavingImpl":Lztemt/profile/ProfilePowersavingImpl;
    sget-object v2, Lztemt/profile/Profile$Scenario;->POWERSAVING:Lztemt/profile/Profile$Scenario;

    invoke-virtual {v0, v2}, Lztemt/profile/ProfileManager;->isProfileActivate(Lztemt/profile/Profile$Scenario;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {v1}, Lztemt/profile/ProfilePowersavingImpl;->setDefaultCpuLimitState()V

    .line 27
    :cond_0
    return-void
.end method
