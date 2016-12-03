.class Lcom/android/phone/NBHardwareClient$1;
.super Lcn/nubia/telestatic/adapter/INBHardwareCallback$Stub;
.source "NBHardwareClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBHardwareClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBHardwareClient;


# direct methods
.method constructor <init>(Lcom/android/phone/NBHardwareClient;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBHardwareClient$1;->this$0:Lcom/android/phone/NBHardwareClient;

    invoke-direct {p0}, Lcn/nubia/telestatic/adapter/INBHardwareCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHardwareServiceReady()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBHardwareClient$1;->this$0:Lcom/android/phone/NBHardwareClient;

    iget-object v1, p0, Lcom/android/phone/NBHardwareClient$1;->this$0:Lcom/android/phone/NBHardwareClient;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/phone/NBHardwareClient;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/NBHardwareClient;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
