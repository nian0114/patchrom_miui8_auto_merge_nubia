.class Lcom/android/settings_ex/msim/NBMsimSettings$2;
.super Ljava/lang/Object;
.source "NBMsimSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/msim/NBMsimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/msim/NBMsimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/msim/NBMsimSettings;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/settings_ex/msim/NBMsimSettings$2;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    const/16 v9, 0x9

    const/4 v5, 0x3

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 196
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$2;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$700(Lcom/android/settings_ex/msim/NBMsimSettings;)[Landroid/preference/nubia/CheckBoxPreference;

    move-result-object v3

    aget-object v3, v3, v6

    if-ne p1, v3, :cond_1

    .line 197
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 198
    .local v0, "enabled":Z
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$2;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slotId:0, enabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/settings_ex/msim/NBMsimSettings;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$800(Lcom/android/settings_ex/msim/NBMsimSettings;Ljava/lang/String;)V

    .line 199
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$2;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$900(Lcom/android/settings_ex/msim/NBMsimSettings;)Lcom/android/settings_ex/msim/INBMsimPresenter;

    move-result-object v3

    invoke-interface {v3, v6, v0}, Lcom/android/settings_ex/msim/INBMsimPresenter;->onDataPreferenceChanged(IZ)V

    .line 201
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$2;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$700(Lcom/android/settings_ex/msim/NBMsimSettings;)[Landroid/preference/nubia/CheckBoxPreference;

    move-result-object v3

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    .line 232
    .end local v0    # "enabled":Z
    :cond_0
    :goto_0
    return v7

    .line 202
    .restart local p2    # "arg1":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$2;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$700(Lcom/android/settings_ex/msim/NBMsimSettings;)[Landroid/preference/nubia/CheckBoxPreference;

    move-result-object v3

    aget-object v3, v3, v7

    if-ne p1, v3, :cond_2

    .line 203
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 204
    .restart local v0    # "enabled":Z
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$2;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slotId:1, enabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/settings_ex/msim/NBMsimSettings;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$800(Lcom/android/settings_ex/msim/NBMsimSettings;Ljava/lang/String;)V

    .line 205
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$2;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mMsimPresenter:Lcom/android/settings_ex/msim/INBMsimPresenter;
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$900(Lcom/android/settings_ex/msim/NBMsimSettings;)Lcom/android/settings_ex/msim/INBMsimPresenter;

    move-result-object v3

    invoke-interface {v3, v7, v0}, Lcom/android/settings_ex/msim/INBMsimPresenter;->onDataPreferenceChanged(IZ)V

    .line 207
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$2;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mDataCheckBox:[Landroid/preference/nubia/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$700(Lcom/android/settings_ex/msim/NBMsimSettings;)[Landroid/preference/nubia/CheckBoxPreference;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3, v6}, Landroid/preference/nubia/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 208
    .end local v0    # "enabled":Z
    .restart local p2    # "arg1":Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$2;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$1000(Lcom/android/settings_ex/msim/NBMsimSettings;)[Lcn/nubia/commonui/preference/ListPreference;

    move-result-object v3

    aget-object v3, v3, v6

    if-ne p1, v3, :cond_3

    .line 209
    check-cast p2, Ljava/lang/String;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 210
    .local v2, "networkType":I
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$2;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mDealHandler:Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$1100(Lcom/android/settings_ex/msim/NBMsimSettings;)Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings$2;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mDealHandler:Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;
    invoke-static {v4}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$1100(Lcom/android/settings_ex/msim/NBMsimSettings;)Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;

    move-result-object v4

    invoke-virtual {v4, v5, v6, v2}, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 213
    .end local v2    # "networkType":I
    .restart local p2    # "arg1":Ljava/lang/Object;
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$2;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mCardNetworkType:[Lcn/nubia/commonui/preference/ListPreference;
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$1000(Lcom/android/settings_ex/msim/NBMsimSettings;)[Lcn/nubia/commonui/preference/ListPreference;

    move-result-object v3

    aget-object v3, v3, v7

    if-ne p1, v3, :cond_4

    .line 214
    check-cast p2, Ljava/lang/String;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 215
    .restart local v2    # "networkType":I
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$2;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mDealHandler:Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$1100(Lcom/android/settings_ex/msim/NBMsimSettings;)Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings$2;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mDealHandler:Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;
    invoke-static {v4}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$1100(Lcom/android/settings_ex/msim/NBMsimSettings;)Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;

    move-result-object v4

    invoke-virtual {v4, v5, v7, v2}, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 218
    .end local v2    # "networkType":I
    .restart local p2    # "arg1":Ljava/lang/Object;
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$2;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mVolteCheckBox:Landroid/preference/nubia/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$1200(Lcom/android/settings_ex/msim/NBMsimSettings;)Landroid/preference/nubia/CheckBoxPreference;

    move-result-object v3

    if-ne p1, v3, :cond_5

    .line 219
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 220
    .restart local v0    # "enabled":Z
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$2;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # invokes: Lcom/android/settings_ex/msim/NBMsimSettings;->onVolteSwitchChanged(Z)V
    invoke-static {v3, v0}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$1300(Lcom/android/settings_ex/msim/NBMsimSettings;Z)V

    goto/16 :goto_0

    .line 221
    .end local v0    # "enabled":Z
    .restart local p2    # "arg1":Ljava/lang/Object;
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$2;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$1400(Lcom/android/settings_ex/msim/NBMsimSettings;)[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    move-result-object v3

    aget-object v3, v3, v6

    if-ne p1, v3, :cond_6

    .line 222
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 223
    .local v1, "isChecked":Z
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$2;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mDealHandler:Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$1100(Lcom/android/settings_ex/msim/NBMsimSettings;)Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings$2;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mDealHandler:Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;
    invoke-static {v4}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$1100(Lcom/android/settings_ex/msim/NBMsimSettings;)Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v9, v6, v8, v5}, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 226
    .end local v1    # "isChecked":Z
    .restart local p2    # "arg1":Ljava/lang/Object;
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$2;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$1400(Lcom/android/settings_ex/msim/NBMsimSettings;)[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    move-result-object v3

    aget-object v3, v3, v7

    if-ne p1, v3, :cond_0

    .line 227
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 228
    .restart local v1    # "isChecked":Z
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$2;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mDealHandler:Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$1100(Lcom/android/settings_ex/msim/NBMsimSettings;)Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings$2;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mDealHandler:Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;
    invoke-static {v4}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$1100(Lcom/android/settings_ex/msim/NBMsimSettings;)Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v9, v7, v8, v5}, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/msim/NBMsimSettings$DealIccCardHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
