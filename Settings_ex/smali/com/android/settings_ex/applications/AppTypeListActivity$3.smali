.class Lcom/android/settings_ex/applications/AppTypeListActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "AppTypeListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/AppTypeListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/AppTypeListActivity;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$3;->this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppTypeListActivity$3;->this$0:Lcom/android/settings_ex/applications/AppTypeListActivity;

    # invokes: Lcom/android/settings_ex/applications/AppTypeListActivity;->refreshUI()V
    invoke-static {v0}, Lcom/android/settings_ex/applications/AppTypeListActivity;->access$300(Lcom/android/settings_ex/applications/AppTypeListActivity;)V

    .line 146
    return-void
.end method
