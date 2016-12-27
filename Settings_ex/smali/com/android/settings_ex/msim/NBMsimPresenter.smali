.class public abstract Lcom/android/settings_ex/msim/NBMsimPresenter;
.super Ljava/lang/Object;
.source "NBMsimPresenter.java"

# interfaces
.implements Lcom/android/settings_ex/msim/INBMsimPresenter;


# instance fields
.field mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

.field mContext:Landroid/content/Context;

.field mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;

.field mMsimView:Lcom/android/settings_ex/msim/INBMsimView;

.field mPrimaryState:I

.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/msim/INBMsimView;Landroid/content/Context;[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;[Landroid/preference/nubia/CheckBoxPreference;)V
    .locals 2
    .param p1, "msimView"    # Lcom/android/settings_ex/msim/INBMsimView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cardEnablers"    # [Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;
    .param p4, "dataCheckBoxs"    # [Landroid/preference/nubia/CheckBoxPreference;

    .prologue
    const/4 v1, 0x2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-array v0, v1, [Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMsimPresenter;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    .line 19
    new-array v0, v1, [Landroid/preference/nubia/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/msim/NBMsimPresenter;->mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;

    .line 24
    iput-object p1, p0, Lcom/android/settings_ex/msim/NBMsimPresenter;->mMsimView:Lcom/android/settings_ex/msim/INBMsimView;

    .line 25
    iput-object p2, p0, Lcom/android/settings_ex/msim/NBMsimPresenter;->mContext:Landroid/content/Context;

    .line 26
    iput-object p3, p0, Lcom/android/settings_ex/msim/NBMsimPresenter;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    .line 27
    iput-object p4, p0, Lcom/android/settings_ex/msim/NBMsimPresenter;->mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/msim/NBMsimPresenter;->mPrimaryState:I

    .line 29
    return-void
.end method


# virtual methods
.method public getCardState(I)I
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 160
    invoke-virtual {p0}, Lcom/android/settings_ex/msim/NBMsimPresenter;->isCapabilitySwitching()Z

    move-result v5

    if-nez v5, :cond_6

    .line 161
    iget-object v5, p0, Lcom/android/settings_ex/msim/NBMsimPresenter;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 163
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 164
    .local v0, "simState":I
    if-ne v0, v4, :cond_1

    .line 165
    const/4 v3, 0x3

    .line 184
    .end local v0    # "simState":I
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return v3

    .line 166
    .restart local v0    # "simState":I
    .restart local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    const/16 v5, 0x8

    if-ne v0, v5, :cond_2

    .line 167
    const/4 v3, 0x2

    goto :goto_0

    .line 168
    :cond_2
    if-eqz v0, :cond_3

    const/4 v5, 0x5

    if-eq v0, v5, :cond_4

    :cond_3
    move v3, v4

    .line 170
    goto :goto_0

    .line 172
    :cond_4
    invoke-static {p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v1

    .line 173
    .local v1, "subId":I
    iget-object v5, p0, Lcom/android/settings_ex/msim/NBMsimPresenter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings_ex/msim/NBCardUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getSubStateDB(I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_5
    move v3, v4

    .line 177
    goto :goto_0

    .line 180
    .end local v0    # "simState":I
    .end local v1    # "subId":I
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_6
    invoke-static {p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v1

    .line 181
    .restart local v1    # "subId":I
    invoke-static {}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getDefault()Lcn/nubia/telframeadapter/common/NBTelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcn/nubia/telframeadapter/common/NBTelephonyManager;->getSubStateDB(I)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 184
    goto :goto_0
.end method

.method public getPrimaryState()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/android/settings_ex/msim/NBMsimPresenter;->mPrimaryState:I

    return v0
.end method

.method public abstract isCapabilitySwitching()Z
.end method

.method setMobileDataEnabled(IZ)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 32
    iget-object v2, p0, Lcom/android/settings_ex/msim/NBMsimPresenter;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 34
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Lcom/android/settings_ex/msim/NBCardUtils;->getSubIdBySlotId(I)I

    move-result v0

    .line 35
    .local v0, "subId":I
    invoke-virtual {v1, v0, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 37
    return-void
.end method

.method public unRegisterReceiverAndObserver()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/msim/NBMsimPresenter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    return-void
.end method

.method protected abstract updateNetworkListEnabled(ILcn/nubia/commonui/preference/ListPreference;)V
.end method

.method public updateNetworkType(IILcn/nubia/commonui/preference/ListPreference;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "networkMode"    # I
    .param p3, "listPreference"    # Lcn/nubia/commonui/preference/ListPreference;

    .prologue
    const v4, 0x7f0c0cc5

    const v3, 0x7f0c0cc4

    const v2, 0x7f0c0cc7

    const v1, 0x7f0c0cc6

    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 43
    packed-switch p2, :pswitch_data_0

    .line 142
    :pswitch_0
    const v0, 0x7f0c0cbe

    invoke-virtual {p3, v0}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    .line 145
    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/android/settings_ex/msim/NBMsimPresenter;->updateNetworkListEnabled(ILcn/nubia/commonui/preference/ListPreference;)V

    .line 146
    return-void

    .line 45
    :pswitch_1
    const v0, 0x7f0c0cba

    invoke-virtual {p3, v0}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 49
    :pswitch_2
    invoke-virtual {p3, v3}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 53
    :pswitch_3
    invoke-virtual {p3, v4}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 57
    :pswitch_4
    invoke-virtual {p3, v1}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 61
    :pswitch_5
    invoke-virtual {p3, v1}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 65
    :pswitch_6
    invoke-virtual {p3, v3}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 69
    :pswitch_7
    const v0, 0x7f0c0cbb

    invoke-virtual {p3, v0}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 73
    :pswitch_8
    const v0, 0x7f0c0cbc

    invoke-virtual {p3, v0}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 77
    :pswitch_9
    invoke-virtual {p3, v2}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 81
    :pswitch_a
    const v0, 0x7f0c0cbd

    invoke-virtual {p3, v0}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 85
    :pswitch_b
    invoke-virtual {p3, v2}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 89
    :pswitch_c
    invoke-virtual {p3, v1}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 93
    :pswitch_d
    const v0, 0x7f0c0cbf

    invoke-virtual {p3, v0}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 97
    :pswitch_e
    invoke-virtual {p3, v4}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 101
    :pswitch_f
    invoke-virtual {p3, v4}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 105
    :pswitch_10
    const v0, 0x7f0c0cc0

    invoke-virtual {p3, v0}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 109
    :pswitch_11
    invoke-virtual {p3, v1}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 113
    :pswitch_12
    invoke-virtual {p3, v2}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 117
    :pswitch_13
    invoke-virtual {p3, v1}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 121
    :pswitch_14
    const v0, 0x7f0c0cc1

    invoke-virtual {p3, v0}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 126
    :pswitch_15
    invoke-virtual {p3, v2}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 130
    :pswitch_16
    const v0, 0x7f0c0cc3

    invoke-virtual {p3, v0}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 135
    :pswitch_17
    invoke-virtual {p3, v2}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 139
    :pswitch_18
    invoke-virtual {p3, v3}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
    .end packed-switch
.end method
