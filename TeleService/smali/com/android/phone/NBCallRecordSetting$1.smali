.class Lcom/android/phone/NBCallRecordSetting$1;
.super Landroid/content/BroadcastReceiver;
.source "NBCallRecordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBCallRecordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBCallRecordSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NBCallRecordSetting;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBCallRecordSetting$1;->this$0:Lcom/android/phone/NBCallRecordSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallRecordSetting$1;->this$0:Lcom/android/phone/NBCallRecordSetting;

    # invokes: Lcom/android/phone/NBCallRecordSetting;->initCallRecordSavePath()V
    invoke-static {v0}, Lcom/android/phone/NBCallRecordSetting;->access$000(Lcom/android/phone/NBCallRecordSetting;)V

    return-void
.end method
