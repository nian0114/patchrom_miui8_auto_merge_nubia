.class final Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;
.super Ljava/lang/Object;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpgradeController"
.end annotation


# instance fields
.field private final mUserId:I

.field final synthetic this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;


# direct methods
.method public constructor <init>(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;I)V
    .locals 0
    .param p2, "userId"    # I

    .prologue
    .line 1926
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1927
    iput p2, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->mUserId:I

    .line 1928
    return-void
.end method

.method private getGlobalSettingsLocked()Lcom/android/providers/settings/SettingsState;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1981
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v0, v1, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v0

    return-object v0
.end method

.method private getSecureSettingsLocked(I)Lcom/android/providers/settings/SettingsState;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v0

    return-object v0
.end method

.method private getSystemSettingsLocked(I)Lcom/android/providers/settings/SettingsState;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v0

    return-object v0
.end method

.method private loadCustomizedVolumeLevels(Lcom/android/providers/settings/SettingsState;)V
    .locals 8
    .param p1, "systemSettings"    # Lcom/android/providers/settings/SettingsState;

    .prologue
    const v7, 0x7f05001b

    const v6, 0x7f05001a

    const v5, 0x7f050019

    const v4, 0x7f050018

    const v3, 0x7f050017

    .line 1994
    const-string v0, "volume_music"

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v1, v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/providers/settings/SettingsState;->updateSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2000
    const-string v0, "volume_ring"

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v1, v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/providers/settings/SettingsState;->updateSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2006
    const-string v0, "volume_voice"

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v1, v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/providers/settings/SettingsState;->updateSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2012
    const-string v0, "volume_alarm"

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v1, v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/providers/settings/SettingsState;->updateSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2018
    const-string v0, "volume_notification"

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v1, v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/providers/settings/SettingsState;->updateSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2025
    const-string v0, "volume_music_headset"

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v1, v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2031
    const-string v0, "volume_ring_headset"

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v1, v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2037
    const-string v0, "volume_voice_headset"

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v1, v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2043
    const-string v0, "volume_alarm_headset"

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v1, v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2049
    const-string v0, "volume_notification_headset"

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v1, v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2056
    const-string v0, "volume_music_headphone"

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v1, v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2062
    const-string v0, "volume_ring_headphone"

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v1, v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2068
    const-string v0, "volume_voice_headphone"

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v1, v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2074
    const-string v0, "volume_alarm_headphone"

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v1, v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2080
    const-string v0, "volume_notification_headphone"

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v1, v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2087
    const-string v0, "volume_music_speaker"

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v1, v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2093
    const-string v0, "volume_ring_speaker"

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v1, v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2099
    const-string v0, "volume_voice_speaker"

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v1, v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2105
    const-string v0, "volume_alarm_speaker"

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v1, v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2111
    const-string v0, "volume_notification_speaker"

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v1, v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2118
    const-string v0, "volume_voice_earpiece"

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v1, v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2123
    return-void
.end method

.method private loadExtraNubiaSettings(Lcom/android/providers/settings/SettingsState;ILjava/lang/String;)V
    .locals 8
    .param p1, "systemSettings"    # Lcom/android/providers/settings/SettingsState;
    .param p2, "fileResId"    # I
    .param p3, "documentTag"    # Ljava/lang/String;

    .prologue
    .line 2282
    iget-object v6, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v6, v6, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v6}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 2283
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v2, :cond_0

    .line 2323
    :goto_0
    return-void

    .line 2287
    :cond_0
    :try_start_0
    invoke-static {v2, p3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2289
    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2290
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 2291
    .local v3, "tag":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 2321
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 2294
    :cond_2
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 2295
    .local v1, "name":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 2296
    .local v5, "value":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2297
    .local v4, "text":Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 2298
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 2300
    :cond_3
    const-string v6, "name"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2301
    const-string v6, "bool"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2302
    const-string v6, "true"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2303
    const-string v6, "1"

    invoke-direct {p0, p1, v5, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->loadSettingIfNeed(Lcom/android/providers/settings/SettingsState;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2314
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2315
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string v6, "SettingsProvider"

    const-string v7, "loadExtraNubiaSettings caught "

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2321
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 2305
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v6, "0"

    invoke-direct {p0, p1, v5, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->loadSettingIfNeed(Lcom/android/providers/settings/SettingsState;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2316
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 2317
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v6, "SettingsProvider"

    const-string v7, "loadExtraNubiaSettings caught "

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2321
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 2307
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_5
    :try_start_5
    const-string v6, "int"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2308
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, p1, v5, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->loadSettingIfNeed(Lcom/android/providers/settings/SettingsState;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 2318
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 2319
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    const-string v6, "SettingsProvider"

    const-string v7, "loadExtraNubiaSettings caught "

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2321
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 2309
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_6
    :try_start_7
    const-string v6, "string"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2310
    invoke-direct {p0, p1, v5, v4}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->loadSettingIfNeed(Lcom/android/providers/settings/SettingsState;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 2321
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    throw v6
.end method

.method private loadSettingIfNeed(Lcom/android/providers/settings/SettingsState;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "systemSettings"    # Lcom/android/providers/settings/SettingsState;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 2273
    if-nez p1, :cond_1

    .line 2278
    :cond_0
    :goto_0
    return-void

    .line 2274
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v0

    .line 2275
    .local v0, "currentSetting":Lcom/android/providers/settings/SettingsState$Setting;
    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 2276
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, p2, v1, v2}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private onUpgradeLocked(III)I
    .locals 12
    .param p1, "userId"    # I
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 2156
    move v1, p2

    .line 2159
    .local v1, "currentVersion":I
    const/16 v9, 0x76

    if-ne v1, v9, :cond_1

    .line 2160
    if-nez p1, :cond_0

    .line 2161
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->getGlobalSettingsLocked()Lcom/android/providers/settings/SettingsState;

    move-result-object v6

    .line 2162
    .local v6, "globalSettings":Lcom/android/providers/settings/SettingsState;
    const-string v9, "zen_mode"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "android"

    invoke-virtual {v6, v9, v10, v11}, Lcom/android/providers/settings/SettingsState;->updateSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2165
    const-string v9, "mode_ringer"

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "android"

    invoke-virtual {v6, v9, v10, v11}, Lcom/android/providers/settings/SettingsState;->updateSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2169
    .end local v6    # "globalSettings":Lcom/android/providers/settings/SettingsState;
    :cond_0
    const/16 v1, 0x77

    .line 2173
    :cond_1
    const/16 v9, 0x77

    if-ne v1, v9, :cond_2

    .line 2174
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->getSecureSettingsLocked(I)Lcom/android/providers/settings/SettingsState;

    move-result-object v7

    .line 2175
    .local v7, "secureSettings":Lcom/android/providers/settings/SettingsState;
    const-string v10, "double_tap_to_wake"

    iget-object v9, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v9, v9, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v9}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f040027

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "1"

    :goto_0
    const-string v11, "android"

    invoke-virtual {v7, v10, v9, v11}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2180
    const/16 v1, 0x78

    .line 2183
    .end local v7    # "secureSettings":Lcom/android/providers/settings/SettingsState;
    :cond_2
    const/16 v9, 0x78

    if-ne v1, v9, :cond_3

    .line 2187
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->getSystemSettingsLocked(I)Lcom/android/providers/settings/SettingsState;

    move-result-object v8

    .line 2188
    .local v8, "systemSettings":Lcom/android/providers/settings/SettingsState;
    const v9, 0x7f030001

    const-string v10, "extra_settings_config"

    invoke-direct {p0, v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->loadExtraNubiaSettings(Lcom/android/providers/settings/SettingsState;ILjava/lang/String;)V

    .line 2190
    const/16 v1, 0x79

    .line 2193
    .end local v8    # "systemSettings":Lcom/android/providers/settings/SettingsState;
    :cond_3
    const/16 v9, 0x79

    if-ne v1, v9, :cond_b

    .line 2197
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->getSecureSettingsLocked(I)Lcom/android/providers/settings/SettingsState;

    move-result-object v7

    .line 2198
    .restart local v7    # "secureSettings":Lcom/android/providers/settings/SettingsState;
    iget-object v9, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v9, v9, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v9}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060012

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2200
    .local v3, "defaultComponent":Ljava/lang/String;
    const-string v9, "nfc_payment_default_component"

    invoke-virtual {v7, v9}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v0

    .line 2202
    .local v0, "currentSetting":Lcom/android/providers/settings/SettingsState$Setting;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    if-nez v0, :cond_4

    .line 2204
    const-string v9, "nfc_payment_default_component"

    const-string v10, "android"

    invoke-virtual {v7, v9, v3, v10}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2211
    :cond_4
    iget-object v9, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v9, v9, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v9}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060013

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2213
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 2214
    const-string v9, "default_input_method"

    const-string v10, "android"

    invoke-virtual {v7, v9, v3, v10}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2220
    :cond_5
    iget-object v9, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v9, v9, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v9}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060014

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2222
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 2223
    const-string v9, "enabled_input_methods"

    const-string v10, "android"

    invoke-virtual {v7, v9, v3, v10}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2230
    :cond_6
    iget-object v9, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v9, v9, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v9}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f040028

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2231
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->getSystemSettingsLocked(I)Lcom/android/providers/settings/SettingsState;

    move-result-object v8

    .line 2232
    .restart local v8    # "systemSettings":Lcom/android/providers/settings/SettingsState;
    invoke-direct {p0, v8}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->loadCustomizedVolumeLevels(Lcom/android/providers/settings/SettingsState;)V

    .line 2237
    .end local v8    # "systemSettings":Lcom/android/providers/settings/SettingsState;
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->getSystemSettingsLocked(I)Lcom/android/providers/settings/SettingsState;

    move-result-object v2

    .line 2240
    .local v2, "dateAndTimeSettings":Lcom/android/providers/settings/SettingsState;
    iget-object v9, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v9, v9, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v9}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060015

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2242
    .local v5, "defaultStringComponent":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 2243
    const-string v9, "date_format"

    const-string v10, "android"

    invoke-virtual {v2, v9, v5, v10}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2246
    :cond_8
    iget-object v9, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v9, v9, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v9}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060016

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2248
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 2249
    const-string v9, "time_12_24"

    const-string v10, "android"

    invoke-virtual {v2, v9, v5, v10}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2252
    :cond_9
    iget-object v9, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v9, v9, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v9}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f050022

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 2254
    .local v4, "defaultIntComponent":I
    const-string v9, "accessibility_enabled"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "android"

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2256
    iget-object v9, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v9, v9, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v9}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060017

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2258
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 2259
    const-string v9, "enabled_accessibility_services"

    const-string v10, "android"

    invoke-virtual {v7, v9, v5, v10}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2263
    :cond_a
    const/16 v1, 0x7a

    .line 2268
    .end local v0    # "currentSetting":Lcom/android/providers/settings/SettingsState$Setting;
    .end local v2    # "dateAndTimeSettings":Lcom/android/providers/settings/SettingsState;
    .end local v3    # "defaultComponent":Ljava/lang/String;
    .end local v4    # "defaultIntComponent":I
    .end local v5    # "defaultStringComponent":Ljava/lang/String;
    .end local v7    # "secureSettings":Lcom/android/providers/settings/SettingsState;
    :cond_b
    return v1

    .line 2175
    .restart local v7    # "secureSettings":Lcom/android/providers/settings/SettingsState;
    :cond_c
    const-string v9, "0"

    goto/16 :goto_0
.end method


# virtual methods
.method public upgradeIfNeededLocked()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/16 v11, 0x7a

    .line 1932
    iget-object v8, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v9, 0x2

    iget v10, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->mUserId:I

    invoke-virtual {v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v6

    .line 1936
    .local v6, "secureSettings":Lcom/android/providers/settings/SettingsState;
    invoke-virtual {v6}, Lcom/android/providers/settings/SettingsState;->getVersionLocked()I

    move-result v5

    .line 1937
    .local v5, "oldVersion":I
    const/16 v4, 0x7a

    .line 1940
    .local v4, "newVersion":I
    if-ne v5, v11, :cond_0

    .line 1978
    :goto_0
    return-void

    .line 1945
    :cond_0
    iget v8, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->mUserId:I

    invoke-direct {p0, v8, v5, v11}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->onUpgradeLocked(III)I

    move-result v0

    .line 1948
    .local v0, "curVersion":I
    if-eq v0, v11, :cond_1

    .line 1950
    iget-object v8, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget v9, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->mUserId:I

    invoke-virtual {v8, v9, v12}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->removeUserStateLocked(IZ)V

    .line 1953
    new-instance v2, Lcom/android/providers/settings/DatabaseHelper;

    iget-object v8, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v8, v8, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v8}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    iget v9, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->mUserId:I

    invoke-direct {v2, v8, v9}, Lcom/android/providers/settings/DatabaseHelper;-><init>(Landroid/content/Context;I)V

    .line 1954
    .local v2, "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    invoke-virtual {v2}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1955
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2, v1, v11, v0, v5}, Lcom/android/providers/settings/DatabaseHelper;->recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;III)V

    .line 1958
    iget-object v8, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget v9, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->mUserId:I

    # invokes: Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->migrateLegacySettingsForUserLocked(Lcom/android/providers/settings/DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)V
    invoke-static {v8, v2, v1, v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->access$1300(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;Lcom/android/providers/settings/DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 1961
    iget v8, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->mUserId:I

    invoke-direct {p0, v8, v5, v11}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->onUpgradeLocked(III)I

    .line 1965
    .end local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "dbHelper":Lcom/android/providers/settings/DatabaseHelper;
    :cond_1
    iget v8, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->mUserId:I

    if-nez v8, :cond_2

    .line 1966
    iget-object v8, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->mUserId:I

    invoke-virtual {v8, v9, v10}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v3

    .line 1968
    .local v3, "globalSettings":Lcom/android/providers/settings/SettingsState;
    invoke-virtual {v3, v11}, Lcom/android/providers/settings/SettingsState;->setVersionLocked(I)V

    .line 1972
    .end local v3    # "globalSettings":Lcom/android/providers/settings/SettingsState;
    :cond_2
    invoke-virtual {v6, v11}, Lcom/android/providers/settings/SettingsState;->setVersionLocked(I)V

    .line 1975
    iget-object v8, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget v9, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$UpgradeController;->mUserId:I

    invoke-virtual {v8, v12, v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v7

    .line 1977
    .local v7, "systemSettings":Lcom/android/providers/settings/SettingsState;
    invoke-virtual {v7, v11}, Lcom/android/providers/settings/SettingsState;->setVersionLocked(I)V

    goto :goto_0
.end method
