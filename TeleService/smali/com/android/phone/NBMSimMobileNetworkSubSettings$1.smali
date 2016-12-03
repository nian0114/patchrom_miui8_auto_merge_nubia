.class Lcom/android/phone/NBMSimMobileNetworkSubSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "NBMSimMobileNetworkSubSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBMSimMobileNetworkSubSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBMSimMobileNetworkSubSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/NBMSimMobileNetworkSubSettings;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings$1;->this$0:Lcom/android/phone/NBMSimMobileNetworkSubSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "iccState":Ljava/lang/String;
    const-string v2, "phone"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, "phoneId":I
    const-string v2, "ABSENT"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings$1;->this$0:Lcom/android/phone/NBMSimMobileNetworkSubSettings;

    # getter for: Lcom/android/phone/NBMSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->access$000(Lcom/android/phone/NBMSimMobileNetworkSubSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NBMSimMobileNetworkSubSettings$1;->this$0:Lcom/android/phone/NBMSimMobileNetworkSubSettings;

    invoke-virtual {v2}, Lcom/android/phone/NBMSimMobileNetworkSubSettings;->finish()V

    :cond_0
    return-void
.end method
