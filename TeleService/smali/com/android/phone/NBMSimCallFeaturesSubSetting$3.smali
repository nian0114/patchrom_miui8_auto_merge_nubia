.class Lcom/android/phone/NBMSimCallFeaturesSubSetting$3;
.super Landroid/os/Handler;
.source "NBMSimCallFeaturesSubSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBMSimCallFeaturesSubSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NBMSimCallFeaturesSubSetting;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$3;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "result":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/NBMSimCallFeaturesSubSetting$3;->this$0:Lcom/android/phone/NBMSimCallFeaturesSubSetting;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/phone/NBMSimCallFeaturesSubSetting;->handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    invoke-static {v1, v0, v2}, Lcom/android/phone/NBMSimCallFeaturesSubSetting;->access$300(Lcom/android/phone/NBMSimCallFeaturesSubSetting;Landroid/os/AsyncResult;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
    .end packed-switch
.end method
