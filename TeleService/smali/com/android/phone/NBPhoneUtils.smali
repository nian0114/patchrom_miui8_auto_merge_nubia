.class public Lcom/android/phone/NBPhoneUtils;
.super Ljava/lang/Object;
.source "NBPhoneUtils.java"


# static fields
.field public static final mIccIDMapType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/NBPhoneUtils;->mIccIDMapType:Ljava/util/HashMap;

    sget-object v0, Lcom/android/phone/NBPhoneUtils;->mIccIDMapType:Ljava/util/HashMap;

    const-string v1, "898600"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/NBPhoneUtils;->mIccIDMapType:Ljava/util/HashMap;

    const-string v1, "898602"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/NBPhoneUtils;->mIccIDMapType:Ljava/util/HashMap;

    const-string v1, "898607"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/NBPhoneUtils;->mIccIDMapType:Ljava/util/HashMap;

    const-string v1, "898601"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/NBPhoneUtils;->mIccIDMapType:Ljava/util/HashMap;

    const-string v1, "898603"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/NBPhoneUtils;->mIccIDMapType:Ljava/util/HashMap;

    const-string v1, "898606"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/NBPhoneUtils;->mIccIDMapType:Ljava/util/HashMap;

    const-string v1, "898611"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static displayDualCardUi()Z
    .locals 1

    .prologue
    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->displayDualCardUi()Z

    move-result v0

    return v0
.end method

.method public static dualCardTypeAnalytics(Ljava/lang/String;)V
    .locals 7
    .param p0, "cardTypeName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .end local p0    # "cardTypeName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .restart local p0    # "cardTypeName":Ljava/lang/String;
    :cond_1
    const-string v5, "NetworkModel"

    invoke-virtual {v0, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .local v4, "sp":Landroid/content/SharedPreferences;
    const-string v5, "DualCardTypeName_Analytics"

    const-string v6, "NA_NA"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "dualCardTypeName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Lcn/nubia/umeng/NBMobclickAgent;->onResume(Landroid/content/Context;)V

    const-string v5, "DualCardType"

    invoke-static {v0, v5, p0}, Lcn/nubia/umeng/NBMobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/nubia/umeng/NBMobclickAgent;->onPause(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user_experience_plan"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    .local v3, "isAgree":Z
    :cond_2
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "DualCardTypeName_Analytics"

    if-eqz v3, :cond_3

    .end local p0    # "cardTypeName":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v5, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .restart local p0    # "cardTypeName":Ljava/lang/String;
    :cond_3
    const-string p0, "NA_NA"

    goto :goto_1
.end method

.method public static enableData(ILandroid/content/Context;)V
    .locals 2
    .param p0, "subId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    :cond_0
    return-void
.end method

.method public static existSDCard()Z
    .locals 2

    .prologue
    invoke-static {}, Lcom/android/phone/NBPhoneUtils;->isSupportExternalSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getSecondaryStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAccount(I)Landroid/telecom/PhoneAccountHandle;
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .local v1, "subId":[I
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.services.telephony.TelephonyConnectionService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "serviceName":Landroid/content/ComponentName;
    new-instance v2, Landroid/telecom/PhoneAccountHandle;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getCardNumber()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "cardNumber":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public static getCardTypeName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    const-string v1, "NA"

    .local v1, "s":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v2, v1

    .end local v1    # "s":Ljava/lang/String;
    .local v2, "s":Ljava/lang/String;
    :goto_0
    return-object v2

    .end local v2    # "s":Ljava/lang/String;
    .restart local v1    # "s":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/phone/NBDsdsUtils;->getIccSerialNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "iccId":Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v2, v1

    .end local v1    # "s":Ljava/lang/String;
    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "s":Ljava/lang/String;
    .restart local v1    # "s":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/phone/NBPhoneUtils;->mIccIDMapType:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/phone/NBPhoneUtils;->mIccIDMapType:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "value":I
    if-nez v3, :cond_3

    const-string v1, "CMCC"

    .end local v3    # "value":I
    :cond_2
    :goto_1
    move-object v2, v1

    .end local v1    # "s":Ljava/lang/String;
    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "s":Ljava/lang/String;
    .restart local v1    # "s":Ljava/lang/String;
    .restart local v3    # "value":I
    :cond_3
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const-string v1, "CUCC"

    goto :goto_1

    :cond_4
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const-string v1, "CTCC"

    goto :goto_1
.end method

.method public static getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneNum_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-static {p1}, Lcom/android/phone/NBPhoneUtils;->getSubIdBySlotId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getSubIdBySlotId(I)I
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget v1, v0, v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getVirtualCardSlot()I
    .locals 1

    .prologue
    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getVirtualCardSlot()I

    move-result v0

    return v0
.end method

.method public static isAirPlaneModeByDB()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isImsUtEnabled(I)Z
    .locals 5
    .param p0, "phoneId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getPhoneFromPhoneId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUtEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v1, v2

    .local v1, "isUtEnabled":Z
    :goto_0
    invoke-static {}, Lcom/android/phone/NBPhoneUtils;->isSupportIms()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    :goto_1
    return v2

    .end local v1    # "isUtEnabled":Z
    :cond_1
    move v1, v3

    goto :goto_0

    .restart local v1    # "isUtEnabled":Z
    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public static isSupportExternalSDCard()Z
    .locals 1

    .prologue
    invoke-static {}, Landroid/os/Environment;->getSecondaryStorageDirectory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportIms()Z
    .locals 3

    .prologue
    :try_start_0
    invoke-static {}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->getInstance()Lcn/nubia/telestatic/adapter/NBTeleStaticManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/telestatic/adapter/NBTeleStaticManager;->isSupportIms()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return v1

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "NBPhoneUtils"

    const-string v2, "isSupportIms: RemoteException!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isVolteOpened(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static needEnableData(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    invoke-static {}, Lcom/android/phone/NBPhoneUtils;->isSupportIms()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/NBPhoneUtils;->isVolteOpened(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/NBPhoneUtils;->isImsUtEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static requestEnableDataDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/android/phone/NBPhoneUtils;->needEnableData(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    new-instance v0, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    const v2, 0x7f120161

    invoke-direct {v0, p0, v2}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .local v0, "builder":Lcn/nubia/commonui/phone/app/AlertDialog$Builder;
    const v2, 0x7f0b0381

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    const v1, 0x104000a

    invoke-virtual {v0, v1, p2}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p3}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/phone/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/phone/app/AlertDialog;

    const/4 v1, 0x1

    goto :goto_0
.end method
