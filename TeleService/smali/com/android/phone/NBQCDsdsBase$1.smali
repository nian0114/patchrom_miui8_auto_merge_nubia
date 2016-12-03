.class Lcom/android/phone/NBQCDsdsBase$1;
.super Ljava/lang/Object;
.source "NBQCDsdsBase.java"

# interfaces
.implements Lcom/qualcomm/qcrilhook/QcRilHookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBQCDsdsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBQCDsdsBase;


# direct methods
.method constructor <init>(Lcom/android/phone/NBQCDsdsBase;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBQCDsdsBase$1;->this$0:Lcom/android/phone/NBQCDsdsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQcRilHookDisconnected()V
    .locals 0

    .prologue
    return-void
.end method

.method public onQcRilHookReady()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBQCDsdsBase$1;->this$0:Lcom/android/phone/NBQCDsdsBase;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/phone/NBQCDsdsBase;->sendEmptyMessage(I)Z

    return-void
.end method
