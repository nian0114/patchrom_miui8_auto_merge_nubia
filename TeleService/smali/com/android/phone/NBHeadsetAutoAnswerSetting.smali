.class public Lcom/android/phone/NBHeadsetAutoAnswerSetting;
.super Ljava/lang/Object;
.source "NBHeadsetAutoAnswerSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;
    }
.end annotation


# direct methods
.method public static getCurrType()Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;
    .locals 4

    .prologue
    invoke-static {}, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;->values()[Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HEADSET_AUTO_ANSWER"

    sget-object v3, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;->NEVER:Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

    invoke-virtual {v3}, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;->ordinal()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static setCurrType(Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;)V
    .locals 3
    .param p0, "type"    # Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;

    .prologue
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "HEADSET_AUTO_ANSWER"

    invoke-virtual {p0}, Lcom/android/phone/NBHeadsetAutoAnswerSetting$AutoAnswerMode;->ordinal()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
