.class Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;
.super Landroid/os/Handler;
.source "NBMSimMobileNetworkSubSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBMSimMobileNetworkSubSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBMSimMobileNetworkSubSettings;


# direct methods
.method private constructor <init>(Lcom/android/phone/NBMSimMobileNetworkSubSettings;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;->this$0:Lcom/android/phone/NBMSimMobileNetworkSubSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NBMSimMobileNetworkSubSettings;Lcom/android/phone/NBMSimMobileNetworkSubSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/NBMSimMobileNetworkSubSettings;
    .param p2, "x1"    # Lcom/android/phone/NBMSimMobileNetworkSubSettings$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;-><init>(Lcom/android/phone/NBMSimMobileNetworkSubSettings;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v1, v3, v4

    .local v1, "modemNetworkMode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: modemNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/NBMSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->access$200(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;->this$0:Lcom/android/phone/NBMSimMobileNetworkSubSettings;

    # invokes: Lcom/android/phone/NBMSimMobileNetworkSubSettings;->getPreferredNetworkMode()I
    invoke-static {v3}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->access$300(Lcom/android/phone/NBMSimMobileNetworkSubSettings;)I

    move-result v2

    .local v2, "settingsNetworkMode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeReponse: settingsNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/NBMSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->access$200(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    const/4 v3, 0x7

    if-eq v1, v3, :cond_0

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    const/16 v3, 0x9

    if-eq v1, v3, :cond_0

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    const/16 v3, 0xb

    if-eq v1, v3, :cond_0

    const/16 v3, 0xc

    if-eq v1, v3, :cond_0

    const/16 v3, 0xd

    if-eq v1, v3, :cond_0

    const/16 v3, 0xe

    if-eq v1, v3, :cond_0

    const/16 v3, 0xf

    if-eq v1, v3, :cond_0

    const/16 v3, 0x10

    if-eq v1, v3, :cond_0

    const/16 v3, 0x11

    if-eq v1, v3, :cond_0

    const/16 v3, 0x12

    if-eq v1, v3, :cond_0

    const/16 v3, 0x13

    if-eq v1, v3, :cond_0

    const/16 v3, 0x14

    if-eq v1, v3, :cond_0

    const/16 v3, 0x15

    if-eq v1, v3, :cond_0

    const/16 v3, 0x16

    if-ne v1, v3, :cond_3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: if 1: modemNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/NBMSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->access$200(Ljava/lang/String;)V

    if-eq v1, v2, :cond_1

    const-string v3, "handleGetPreferredNetworkTypeResponse: if 2: modemNetworkMode != settingsNetworkMode"

    # invokes: Lcom/android/phone/NBMSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->access$200(Ljava/lang/String;)V

    move v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: if 2: settingsNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/NBMSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->access$200(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;->this$0:Lcom/android/phone/NBMSimMobileNetworkSubSettings;

    # invokes: Lcom/android/phone/NBMSimMobileNetworkSubSettings;->setPreferredNetworkMode(I)V
    invoke-static {v3, v2}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->access$400(Lcom/android/phone/NBMSimMobileNetworkSubSettings;I)V

    :cond_1
    iget-object v3, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;->this$0:Lcom/android/phone/NBMSimMobileNetworkSubSettings;

    # invokes: Lcom/android/phone/NBMSimMobileNetworkSubSettings;->UpdatePreferredNetworkModeSummary(I)V
    invoke-static {v3, v1}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->access$500(Lcom/android/phone/NBMSimMobileNetworkSubSettings;I)V

    iget-object v3, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;->this$0:Lcom/android/phone/NBMSimMobileNetworkSubSettings;

    # getter for: Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;
    invoke-static {v3}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->access$600(Lcom/android/phone/NBMSimMobileNetworkSubSettings;)Lcn/nubia/commonui/phone/preference/ListPreference;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/phone/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .end local v1    # "modemNetworkMode":I
    .end local v2    # "settingsNetworkMode":I
    :cond_2
    :goto_0
    return-void

    .restart local v1    # "modemNetworkMode":I
    .restart local v2    # "settingsNetworkMode":I
    :cond_3
    const-string v3, "handleGetPreferredNetworkTypeResponse: else: reset to default"

    # invokes: Lcom/android/phone/NBMSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->access$200(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;->resetNetworkModeToDefault()V

    goto :goto_0
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;->this$0:Lcom/android/phone/NBMSimMobileNetworkSubSettings;

    # getter for: Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;
    invoke-static {v2}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->access$600(Lcom/android/phone/NBMSimMobileNetworkSubSettings;)Lcn/nubia/commonui/phone/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/commonui/phone/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "networkMode":I
    iget-object v2, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;->this$0:Lcom/android/phone/NBMSimMobileNetworkSubSettings;

    # invokes: Lcom/android/phone/NBMSimMobileNetworkSubSettings;->setPreferredNetworkMode(I)V
    invoke-static {v2, v1}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->access$400(Lcom/android/phone/NBMSimMobileNetworkSubSettings;I)V

    iget-object v2, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;->this$0:Lcom/android/phone/NBMSimMobileNetworkSubSettings;

    # invokes: Lcom/android/phone/NBMSimMobileNetworkSubSettings;->setPrefNetworkTypeInSp(I)V
    invoke-static {v2, v1}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->access$700(Lcom/android/phone/NBMSimMobileNetworkSubSettings;I)V

    .end local v1    # "networkMode":I
    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;->this$0:Lcom/android/phone/NBMSimMobileNetworkSubSettings;

    # getter for: Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->access$000(Lcom/android/phone/NBMSimMobileNetworkSubSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private resetNetworkModeToDefault()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;->this$0:Lcom/android/phone/NBMSimMobileNetworkSubSettings;

    # getter for: Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Lcn/nubia/commonui/phone/preference/ListPreference;
    invoke-static {v0}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->access$600(Lcom/android/phone/NBMSimMobileNetworkSubSettings;)Lcn/nubia/commonui/phone/preference/ListPreference;

    move-result-object v0

    sget v1, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->preferredNetworkMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;->this$0:Lcom/android/phone/NBMSimMobileNetworkSubSettings;

    sget v1, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->preferredNetworkMode:I

    # invokes: Lcom/android/phone/NBMSimMobileNetworkSubSettings;->setPreferredNetworkMode(I)V
    invoke-static {v0, v1}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->access$400(Lcom/android/phone/NBMSimMobileNetworkSubSettings;I)V

    iget-object v0, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;->this$0:Lcom/android/phone/NBMSimMobileNetworkSubSettings;

    # getter for: Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->access$000(Lcom/android/phone/NBMSimMobileNetworkSubSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    sget v1, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->preferredNetworkMode:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/NBMSimMobileNetworkSubSettings$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
