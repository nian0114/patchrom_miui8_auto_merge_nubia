.class Lcom/android/phone/NBDdsSwitchController$2;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "NBDdsSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBDdsSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBDdsSwitchController;


# direct methods
.method constructor <init>(Lcom/android/phone/NBDdsSwitchController;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBDdsSwitchController$2;->this$0:Lcom/android/phone/NBDdsSwitchController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBDdsSwitchController$2;->this$0:Lcom/android/phone/NBDdsSwitchController;

    # invokes: Lcom/android/phone/NBDdsSwitchController;->handleSubInfoChanged()V
    invoke-static {v0}, Lcom/android/phone/NBDdsSwitchController;->access$300(Lcom/android/phone/NBDdsSwitchController;)V

    return-void
.end method
