.class Lcom/android/settings_ex/LauncherModeFragment$5$1;
.super Ljava/lang/Object;
.source "LauncherModeFragment.java"

# interfaces
.implements Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/LauncherModeFragment$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/LauncherModeFragment$5;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/LauncherModeFragment$5;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings_ex/LauncherModeFragment$5$1;->this$1:Lcom/android/settings_ex/LauncherModeFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/LauncherModeFragment$5$1;->this$1:Lcom/android/settings_ex/LauncherModeFragment$5;

    iget-object v0, v0, Lcom/android/settings_ex/LauncherModeFragment$5;->this$0:Lcom/android/settings_ex/LauncherModeFragment;

    # getter for: Lcom/android/settings_ex/LauncherModeFragment;->manager:Lcom/android/settings_ex/applications/DefaultAppManager;
    invoke-static {v0}, Lcom/android/settings_ex/LauncherModeFragment;->access$600(Lcom/android/settings_ex/LauncherModeFragment;)Lcom/android/settings_ex/applications/DefaultAppManager;

    move-result-object v0

    const-string v1, "cn.nubia.launcher"

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/DefaultAppManager;->setDefaultApp(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public onFinishTask()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/LauncherModeFragment$5$1;->this$1:Lcom/android/settings_ex/LauncherModeFragment$5;

    iget-object v0, v0, Lcom/android/settings_ex/LauncherModeFragment$5;->this$0:Lcom/android/settings_ex/LauncherModeFragment;

    # getter for: Lcom/android/settings_ex/LauncherModeFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/LauncherModeFragment;->access$500(Lcom/android/settings_ex/LauncherModeFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 123
    return-void
.end method
