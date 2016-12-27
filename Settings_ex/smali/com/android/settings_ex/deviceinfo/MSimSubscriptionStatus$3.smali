.class Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$3;
.super Landroid/telephony/PhoneStateListener;
.source "MSimSubscriptionStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$3;->this$0:Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$3;->this$0:Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    # setter for: Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mDataState:I
    invoke-static {v0, p1}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->access$402(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;I)I

    .line 336
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$3;->this$0:Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    # invokes: Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->updateDataState()V
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->access$500(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;)V

    .line 337
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$3;->this$0:Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    # invokes: Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->access$600(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;)V

    .line 338
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$3;->this$0:Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    iput-object p1, v0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    .line 331
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$3;->this$0:Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    # invokes: Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->updateServiceState()V
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->access$300(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;)V

    .line 332
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$3;->this$0:Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    iput-object p1, v0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 326
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$3;->this$0:Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->updateSignalStrength()V

    .line 327
    return-void
.end method
