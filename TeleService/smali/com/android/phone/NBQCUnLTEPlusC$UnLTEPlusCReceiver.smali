.class Lcom/android/phone/NBQCUnLTEPlusC$UnLTEPlusCReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NBQCUnLTEPlusC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBQCUnLTEPlusC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnLTEPlusCReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBQCUnLTEPlusC;


# direct methods
.method private constructor <init>(Lcom/android/phone/NBQCUnLTEPlusC;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBQCUnLTEPlusC$UnLTEPlusCReceiver;->this$0:Lcom/android/phone/NBQCUnLTEPlusC;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NBQCUnLTEPlusC;Lcom/android/phone/NBQCUnLTEPlusC$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/NBQCUnLTEPlusC;
    .param p2, "x1"    # Lcom/android/phone/NBQCUnLTEPlusC$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBQCUnLTEPlusC$UnLTEPlusCReceiver;-><init>(Lcom/android/phone/NBQCUnLTEPlusC;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCUnLTEPlusC$UnLTEPlusCReceiver;->this$0:Lcom/android/phone/NBQCUnLTEPlusC;

    # invokes: Lcom/android/phone/NBQCUnLTEPlusC;->handleIntent(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/phone/NBQCUnLTEPlusC;->access$200(Lcom/android/phone/NBQCUnLTEPlusC;Landroid/content/Intent;)V

    return-void
.end method
