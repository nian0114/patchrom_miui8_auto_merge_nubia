.class Lcom/android/phone/NBHardwareClient$HardwarePublishedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NBHardwareClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBHardwareClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HardwarePublishedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBHardwareClient;


# direct methods
.method private constructor <init>(Lcom/android/phone/NBHardwareClient;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBHardwareClient$HardwarePublishedReceiver;->this$0:Lcom/android/phone/NBHardwareClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NBHardwareClient;Lcom/android/phone/NBHardwareClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/NBHardwareClient;
    .param p2, "x1"    # Lcom/android/phone/NBHardwareClient$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBHardwareClient$HardwarePublishedReceiver;-><init>(Lcom/android/phone/NBHardwareClient;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBHardwareClient$HardwarePublishedReceiver;->this$0:Lcom/android/phone/NBHardwareClient;

    # invokes: Lcom/android/phone/NBHardwareClient;->sendInfoToHardwareService()V
    invoke-static {v0}, Lcom/android/phone/NBHardwareClient;->access$100(Lcom/android/phone/NBHardwareClient;)V

    return-void
.end method
