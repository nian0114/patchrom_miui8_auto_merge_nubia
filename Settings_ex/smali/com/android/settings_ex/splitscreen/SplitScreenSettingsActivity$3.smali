.class Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$3;
.super Ljava/lang/Object;
.source "SplitScreenSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$3;->this$0:Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 98
    iget-object v1, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$3;->this$0:Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;

    # getter for: Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->mSplitScreenModeView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->access$200(Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$3;->this$0:Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;

    # setter for: Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->mIsNeedMultiWindowLaunchFlag:Z
    invoke-static {v1, v0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->access$102(Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;Z)Z

    .line 100
    iget-object v1, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$3;->this$0:Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;

    # getter for: Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->mSplitScreenSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;
    invoke-static {v1}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->access$300(Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;)Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$3;->this$0:Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;

    # getter for: Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->mSplitScreenSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;
    invoke-static {v2}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->access$300(Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;)Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/widget/ToggleSwitch;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/widget/ToggleSwitch;->setChecked(Z)V

    .line 103
    :cond_0
    return-void

    .line 100
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
