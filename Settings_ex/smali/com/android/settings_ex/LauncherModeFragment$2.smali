.class Lcom/android/settings_ex/LauncherModeFragment$2;
.super Ljava/lang/Object;
.source "LauncherModeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/LauncherModeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 59
    iput-object p1, p0, Lcom/android/settings_ex/LauncherModeFragment$2;->this$0:Lcom/android/settings_ex/LauncherModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/LauncherModeFragment$2;->this$0:Lcom/android/settings_ex/LauncherModeFragment;

    # getter for: Lcom/android/settings_ex/LauncherModeFragment;->mStandardCheck:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings_ex/LauncherModeFragment;->access$000(Lcom/android/settings_ex/LauncherModeFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/LauncherModeFragment$2;->this$0:Lcom/android/settings_ex/LauncherModeFragment;

    # invokes: Lcom/android/settings_ex/LauncherModeFragment;->showStandardConfirmDialog()V
    invoke-static {v0}, Lcom/android/settings_ex/LauncherModeFragment;->access$300(Lcom/android/settings_ex/LauncherModeFragment;)V

    goto :goto_0
.end method
