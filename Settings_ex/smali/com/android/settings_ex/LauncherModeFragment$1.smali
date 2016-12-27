.class Lcom/android/settings_ex/LauncherModeFragment$1;
.super Landroid/os/Handler;
.source "LauncherModeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/LauncherModeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/LauncherModeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/LauncherModeFragment;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings_ex/LauncherModeFragment$1;->this$0:Lcom/android/settings_ex/LauncherModeFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 38
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1

    .line 39
    iget-object v1, p0, Lcom/android/settings_ex/LauncherModeFragment$1;->this$0:Lcom/android/settings_ex/LauncherModeFragment;

    # getter for: Lcom/android/settings_ex/LauncherModeFragment;->mStandardCheck:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings_ex/LauncherModeFragment;->access$000(Lcom/android/settings_ex/LauncherModeFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 40
    iget-object v1, p0, Lcom/android/settings_ex/LauncherModeFragment$1;->this$0:Lcom/android/settings_ex/LauncherModeFragment;

    # getter for: Lcom/android/settings_ex/LauncherModeFragment;->mSimpleCheck:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings_ex/LauncherModeFragment;->access$100(Lcom/android/settings_ex/LauncherModeFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 41
    iget-object v1, p0, Lcom/android/settings_ex/LauncherModeFragment$1;->this$0:Lcom/android/settings_ex/LauncherModeFragment;

    # invokes: Lcom/android/settings_ex/LauncherModeFragment;->refreshView()V
    invoke-static {v1}, Lcom/android/settings_ex/LauncherModeFragment;->access$200(Lcom/android/settings_ex/LauncherModeFragment;)V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object v1, p0, Lcom/android/settings_ex/LauncherModeFragment$1;->this$0:Lcom/android/settings_ex/LauncherModeFragment;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/LauncherModeFragment;->startActivity(Landroid/content/Intent;)V

    .line 46
    iget-object v1, p0, Lcom/android/settings_ex/LauncherModeFragment$1;->this$0:Lcom/android/settings_ex/LauncherModeFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/LauncherModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
