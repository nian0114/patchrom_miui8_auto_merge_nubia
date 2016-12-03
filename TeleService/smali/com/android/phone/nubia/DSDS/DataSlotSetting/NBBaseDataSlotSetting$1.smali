.class Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "NBBaseDataSlotSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->doSwitchSubToSlotInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$1;->this$0:Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    .prologue
    const-string v0, "NBDataSlotSetting"

    const-string v1, "onSubscriptionsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting$1;->this$0:Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;

    # getter for: Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;->access$300(Lcom/android/phone/nubia/DSDS/DataSlotSetting/NBBaseDataSlotSetting;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
