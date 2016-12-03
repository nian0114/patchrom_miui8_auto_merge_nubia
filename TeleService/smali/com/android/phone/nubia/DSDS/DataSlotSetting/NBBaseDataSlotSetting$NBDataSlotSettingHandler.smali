.class Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotSettingHandler;
.super Landroid/os/Handler;
.source "NBBaseDataSlotSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NBDataSlotSettingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;


# direct methods
.method private constructor <init>(Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotSettingHandler;->this$0:Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;
    .param p2, "x1"    # Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotSettingHandler;-><init>(Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-string v0, "NBDataSlotSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotSettingHandler;->this$0:Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;

    # invokes: Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->onSubStateChange()V
    invoke-static {v0}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->access$100(Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$NBDataSlotSettingHandler;->this$0:Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->onDataSwitchChange(II)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->access$200(Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
