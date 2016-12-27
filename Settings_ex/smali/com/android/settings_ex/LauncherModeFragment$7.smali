.class Lcom/android/settings_ex/LauncherModeFragment$7;
.super Ljava/lang/Object;
.source "LauncherModeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/LauncherModeFragment;->showSimpleConfirmDialog()V
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
    .line 151
    iput-object p1, p0, Lcom/android/settings_ex/LauncherModeFragment$7;->this$0:Lcom/android/settings_ex/LauncherModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v1, p0, Lcom/android/settings_ex/LauncherModeFragment$7;->this$0:Lcom/android/settings_ex/LauncherModeFragment;

    # getter for: Lcom/android/settings_ex/LauncherModeFragment;->mSimpleCheck:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings_ex/LauncherModeFragment;->access$100(Lcom/android/settings_ex/LauncherModeFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 155
    iget-object v1, p0, Lcom/android/settings_ex/LauncherModeFragment$7;->this$0:Lcom/android/settings_ex/LauncherModeFragment;

    # getter for: Lcom/android/settings_ex/LauncherModeFragment;->mStandardCheck:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings_ex/LauncherModeFragment;->access$000(Lcom/android/settings_ex/LauncherModeFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 156
    new-instance v0, Lcom/android/settings_ex/LauncherModeFragment$7$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/LauncherModeFragment$7$1;-><init>(Lcom/android/settings_ex/LauncherModeFragment$7;)V

    .line 167
    .local v0, "callback":Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;
    invoke-static {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils;->startThread(Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;)V

    .line 168
    return-void
.end method
