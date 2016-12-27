.class Lcom/android/settings_ex/notificationcenter/ui/Checkboxutils;
.super Ljava/lang/Object;
.source "Checkboxutils.java"


# direct methods
.method public static isSwitchEnable(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)Z
    .locals 1
    .param p0, "info"    # Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    .param p1, "flag"    # I

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getFlag()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateFlag(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)I
    .locals 1
    .param p0, "info"    # Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    .param p1, "flag"    # I

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getFlag()I

    move-result v0

    xor-int/2addr v0, p1

    return v0
.end method
