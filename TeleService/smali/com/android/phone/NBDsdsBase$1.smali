.class Lcom/android/phone/NBDsdsBase$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "NBDsdsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBDsdsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBDsdsBase;


# direct methods
.method constructor <init>(Lcom/android/phone/NBDsdsBase;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBDsdsBase$1;->this$0:Lcom/android/phone/NBDsdsBase;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBDsdsBase$1;->this$0:Lcom/android/phone/NBDsdsBase;

    invoke-virtual {v0}, Lcom/android/phone/NBDsdsBase;->isAllIccIdQueryDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBDsdsBase$1;->this$0:Lcom/android/phone/NBDsdsBase;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/phone/NBDsdsBase;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/phone/NBDsdsBase$1;->this$0:Lcom/android/phone/NBDsdsBase;

    # getter for: Lcom/android/phone/NBDsdsBase;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v0}, Lcom/android/phone/NBDsdsBase;->access$000(Lcom/android/phone/NBDsdsBase;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :cond_0
    return-void
.end method
