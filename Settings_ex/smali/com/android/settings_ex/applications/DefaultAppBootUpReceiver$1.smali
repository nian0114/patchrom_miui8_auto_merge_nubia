.class Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver$1;
.super Ljava/lang/Object;
.source "DefaultAppBootUpReceiver.java"

# interfaces
.implements Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver$1;->this$0:Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver;

    iput-object p2, p0, Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver$1;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver$1;->this$0:Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver;

    iget-object v1, p0, Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver$1;->val$mContext:Landroid/content/Context;

    # invokes: Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver;->setSystemAppAsDefault(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver;->access$000(Lcom/android/settings_ex/applications/DefaultAppBootUpReceiver;Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public onFinishTask()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method
