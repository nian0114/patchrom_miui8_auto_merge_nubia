.class Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$1;
.super Ljava/lang/Object;
.source "SplitScreenSettingsActivity.java"

# interfaces
.implements Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeClickListener;


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
    .line 79
    iput-object p1, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$1;->this$0:Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeClicked()Z
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$1;->this$0:Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->mIsNeedMultiWindowLaunchFlag:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->access$102(Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;Z)Z

    .line 83
    const/4 v0, 0x0

    return v0
.end method
