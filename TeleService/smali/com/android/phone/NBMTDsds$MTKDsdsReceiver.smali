.class Lcom/android/phone/NBMTDsds$MTKDsdsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NBMTDsds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBMTDsds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MTKDsdsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBMTDsds;


# direct methods
.method private constructor <init>(Lcom/android/phone/NBMTDsds;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBMTDsds$MTKDsdsReceiver;->this$0:Lcom/android/phone/NBMTDsds;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NBMTDsds;Lcom/android/phone/NBMTDsds$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/NBMTDsds;
    .param p2, "x1"    # Lcom/android/phone/NBMTDsds$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBMTDsds$MTKDsdsReceiver;-><init>(Lcom/android/phone/NBMTDsds;)V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBMTDsds$MTKDsdsReceiver;->this$0:Lcom/android/phone/NBMTDsds;

    invoke-virtual {v1, p1}, Lcom/android/phone/NBMTDsds;->handleSimStateChanged(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p2}, Lcom/android/phone/NBMTDsds$MTKDsdsReceiver;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method
