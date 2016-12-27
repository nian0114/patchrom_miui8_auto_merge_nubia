.class public Lcom/android/settings_ex/eyeverify/EyeUtil;
.super Ljava/lang/Object;
.source "EyeUtil.java"


# direct methods
.method public static isSupportVerify()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 15
    const-string v2, "ro.nubia.eyeverify.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
