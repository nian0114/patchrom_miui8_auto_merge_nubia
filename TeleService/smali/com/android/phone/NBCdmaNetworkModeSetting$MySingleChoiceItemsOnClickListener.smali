.class final Lcom/android/phone/NBCdmaNetworkModeSetting$MySingleChoiceItemsOnClickListener;
.super Ljava/lang/Object;
.source "NBCdmaNetworkModeSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBCdmaNetworkModeSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MySingleChoiceItemsOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBCdmaNetworkModeSetting;


# direct methods
.method private constructor <init>(Lcom/android/phone/NBCdmaNetworkModeSetting;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBCdmaNetworkModeSetting$MySingleChoiceItemsOnClickListener;->this$0:Lcom/android/phone/NBCdmaNetworkModeSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NBCdmaNetworkModeSetting;Lcom/android/phone/NBCdmaNetworkModeSetting$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/NBCdmaNetworkModeSetting;
    .param p2, "x1"    # Lcom/android/phone/NBCdmaNetworkModeSetting$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBCdmaNetworkModeSetting$MySingleChoiceItemsOnClickListener;-><init>(Lcom/android/phone/NBCdmaNetworkModeSetting;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "value"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/android/phone/NBCdmaNetworkModeSetting$MySingleChoiceItemsOnClickListener;->this$0:Lcom/android/phone/NBCdmaNetworkModeSetting;

    # getter for: Lcom/android/phone/NBCdmaNetworkModeSetting;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/NBCdmaNetworkModeSetting;->access$500(Lcom/android/phone/NBCdmaNetworkModeSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/RIL;

    .local v0, "cm":Lcom/android/internal/telephony/RIL;
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBCdmaNetworkModeSetting$MySingleChoiceItemsOnClickListener;->this$0:Lcom/android/phone/NBCdmaNetworkModeSetting;

    # getter for: Lcom/android/phone/NBCdmaNetworkModeSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/NBCdmaNetworkModeSetting;->access$600(Lcom/android/phone/NBCdmaNetworkModeSetting;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v4, v2, v1}, Lcom/android/internal/telephony/RIL;->setCommonData(IILandroid/os/Message;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/android/phone/NBCdmaNetworkModeSetting$MySingleChoiceItemsOnClickListener;->this$0:Lcom/android/phone/NBCdmaNetworkModeSetting;

    # invokes: Lcom/android/phone/NBCdmaNetworkModeSetting;->showProgressDialog()V
    invoke-static {v1}, Lcom/android/phone/NBCdmaNetworkModeSetting;->access$700(Lcom/android/phone/NBCdmaNetworkModeSetting;)V

    return-void

    :cond_0
    if-ne p2, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/NBCdmaNetworkModeSetting$MySingleChoiceItemsOnClickListener;->this$0:Lcom/android/phone/NBCdmaNetworkModeSetting;

    # getter for: Lcom/android/phone/NBCdmaNetworkModeSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/NBCdmaNetworkModeSetting;->access$600(Lcom/android/phone/NBCdmaNetworkModeSetting;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v4, v3, v1}, Lcom/android/internal/telephony/RIL;->setCommonData(IILandroid/os/Message;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/phone/NBCdmaNetworkModeSetting$MySingleChoiceItemsOnClickListener;->this$0:Lcom/android/phone/NBCdmaNetworkModeSetting;

    # getter for: Lcom/android/phone/NBCdmaNetworkModeSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/NBCdmaNetworkModeSetting;->access$600(Lcom/android/phone/NBCdmaNetworkModeSetting;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/telephony/RIL;->setCommonData(IILandroid/os/Message;)V

    goto :goto_0
.end method
