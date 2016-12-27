.class Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$2;
.super Landroid/content/BroadcastReceiver;
.source "MSimSubscriptionStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    # getter for: Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->access$200(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    # getter for: Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mPhoneId:I
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->access$100(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->finish()V

    .line 156
    :cond_0
    return-void
.end method
