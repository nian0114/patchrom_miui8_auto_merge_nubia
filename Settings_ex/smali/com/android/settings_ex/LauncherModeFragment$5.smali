.class Lcom/android/settings_ex/LauncherModeFragment$5;
.super Ljava/lang/Object;
.source "LauncherModeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/LauncherModeFragment;->showStandardConfirmDialog()V
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
    .line 114
    iput-object p1, p0, Lcom/android/settings_ex/LauncherModeFragment$5;->this$0:Lcom/android/settings_ex/LauncherModeFragment;

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

    .line 117
    iget-object v1, p0, Lcom/android/settings_ex/LauncherModeFragment$5;->this$0:Lcom/android/settings_ex/LauncherModeFragment;

    # getter for: Lcom/android/settings_ex/LauncherModeFragment;->mStandardCheck:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings_ex/LauncherModeFragment;->access$000(Lcom/android/settings_ex/LauncherModeFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/LauncherModeFragment$5;->this$0:Lcom/android/settings_ex/LauncherModeFragment;

    # getter for: Lcom/android/settings_ex/LauncherModeFragment;->mSimpleCheck:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings_ex/LauncherModeFragment;->access$100(Lcom/android/settings_ex/LauncherModeFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 119
    new-instance v0, Lcom/android/settings_ex/LauncherModeFragment$5$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/LauncherModeFragment$5$1;-><init>(Lcom/android/settings_ex/LauncherModeFragment$5;)V

    .line 129
    .local v0, "callback":Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;
    invoke-static {v0}, Lcom/android/settings_ex/applications/DefaultAppUtils;->startThread(Lcom/android/settings_ex/applications/DefaultAppUtils$HandleDefaultCallback;)V

    .line 130
    return-void
.end method
