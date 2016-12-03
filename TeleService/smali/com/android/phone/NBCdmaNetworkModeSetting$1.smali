.class Lcom/android/phone/NBCdmaNetworkModeSetting$1;
.super Landroid/os/Handler;
.source "NBCdmaNetworkModeSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBCdmaNetworkModeSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBCdmaNetworkModeSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NBCdmaNetworkModeSetting;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBCdmaNetworkModeSetting$1;->this$0:Lcom/android/phone/NBCdmaNetworkModeSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/NBCdmaNetworkModeSetting$1;->this$0:Lcom/android/phone/NBCdmaNetworkModeSetting;

    # getter for: Lcom/android/phone/NBCdmaNetworkModeSetting;->mpDialogDisableData:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/NBCdmaNetworkModeSetting;->access$000(Lcom/android/phone/NBCdmaNetworkModeSetting;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBCdmaNetworkModeSetting$1;->this$0:Lcom/android/phone/NBCdmaNetworkModeSetting;

    # getter for: Lcom/android/phone/NBCdmaNetworkModeSetting;->mpDialogDisableData:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/NBCdmaNetworkModeSetting;->access$000(Lcom/android/phone/NBCdmaNetworkModeSetting;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBCdmaNetworkModeSetting$1;->this$0:Lcom/android/phone/NBCdmaNetworkModeSetting;

    # getter for: Lcom/android/phone/NBCdmaNetworkModeSetting;->mpDialogDisableData:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/NBCdmaNetworkModeSetting;->access$000(Lcom/android/phone/NBCdmaNetworkModeSetting;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NBCdmaNetworkModeSetting$1;->this$0:Lcom/android/phone/NBCdmaNetworkModeSetting;

    # invokes: Lcom/android/phone/NBCdmaNetworkModeSetting;->handleSetEvdoType(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/phone/NBCdmaNetworkModeSetting;->access$100(Lcom/android/phone/NBCdmaNetworkModeSetting;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/NBCdmaNetworkModeSetting$1;->this$0:Lcom/android/phone/NBCdmaNetworkModeSetting;

    # getter for: Lcom/android/phone/NBCdmaNetworkModeSetting;->mpDialogDisableData:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/NBCdmaNetworkModeSetting;->access$000(Lcom/android/phone/NBCdmaNetworkModeSetting;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NBCdmaNetworkModeSetting$1;->this$0:Lcom/android/phone/NBCdmaNetworkModeSetting;

    # getter for: Lcom/android/phone/NBCdmaNetworkModeSetting;->mpDialogDisableData:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/NBCdmaNetworkModeSetting;->access$000(Lcom/android/phone/NBCdmaNetworkModeSetting;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NBCdmaNetworkModeSetting$1;->this$0:Lcom/android/phone/NBCdmaNetworkModeSetting;

    # getter for: Lcom/android/phone/NBCdmaNetworkModeSetting;->mpDialogDisableData:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/NBCdmaNetworkModeSetting;->access$000(Lcom/android/phone/NBCdmaNetworkModeSetting;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/NBCdmaNetworkModeSetting$1;->this$0:Lcom/android/phone/NBCdmaNetworkModeSetting;

    # invokes: Lcom/android/phone/NBCdmaNetworkModeSetting;->handleGetEvdoType(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/phone/NBCdmaNetworkModeSetting;->access$200(Lcom/android/phone/NBCdmaNetworkModeSetting;Landroid/os/Message;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
