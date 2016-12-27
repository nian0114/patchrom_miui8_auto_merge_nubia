.class Lcom/android/settings_ex/msim/NBMsimSettings$4;
.super Landroid/telephony/PhoneStateListener;
.source "NBMsimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/msim/NBMsimSettings;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/msim/NBMsimSettings;II)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 890
    iput-object p1, p0, Lcom/android/settings_ex/msim/NBMsimSettings$4;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    iput p3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$4;->val$slotId:I

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 907
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings$4;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mCallState:[I
    invoke-static {v0}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$2200(Lcom/android/settings_ex/msim/NBMsimSettings;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/msim/NBMsimSettings$4;->val$slotId:I

    aput p1, v0, v1

    .line 908
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings$4;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateDualCardSelected()V

    .line 909
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings$4;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateCardStatePreference(IZ)V

    .line 910
    iget-object v0, p0, Lcom/android/settings_ex/msim/NBMsimSettings$4;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/msim/NBMsimSettings;->updateCardStatePreference(IZ)V

    .line 911
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 893
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v2

    .line 894
    .local v2, "voiceNetType":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    .line 895
    .local v1, "dataNetType":I
    if-nez v1, :cond_1

    move v0, v2

    .line 898
    .local v0, "chosenNetType":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$4;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mCardEnablerPreference:[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$1400(Lcom/android/settings_ex/msim/NBMsimSettings;)[Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings$4;->val$slotId:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/msim/NBMsimCardEnablerPreference;->updateDataNetType(I)V

    .line 899
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    iget-object v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings$4;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mRoaming:[Z
    invoke-static {v4}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$2000(Lcom/android/settings_ex/msim/NBMsimSettings;)[Z

    move-result-object v4

    iget v5, p0, Lcom/android/settings_ex/msim/NBMsimSettings$4;->val$slotId:I

    aget-boolean v4, v4, v5

    if-eq v3, v4, :cond_0

    .line 900
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$4;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # getter for: Lcom/android/settings_ex/msim/NBMsimSettings;->mRoaming:[Z
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$2000(Lcom/android/settings_ex/msim/NBMsimSettings;)[Z

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/msim/NBMsimSettings$4;->val$slotId:I

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    aput-boolean v5, v3, v4

    .line 901
    iget-object v3, p0, Lcom/android/settings_ex/msim/NBMsimSettings$4;->this$0:Lcom/android/settings_ex/msim/NBMsimSettings;

    # invokes: Lcom/android/settings_ex/msim/NBMsimSettings;->updateNetworkType()V
    invoke-static {v3}, Lcom/android/settings_ex/msim/NBMsimSettings;->access$2100(Lcom/android/settings_ex/msim/NBMsimSettings;)V

    .line 903
    :cond_0
    return-void

    .end local v0    # "chosenNetType":I
    :cond_1
    move v0, v1

    .line 895
    goto :goto_0
.end method
