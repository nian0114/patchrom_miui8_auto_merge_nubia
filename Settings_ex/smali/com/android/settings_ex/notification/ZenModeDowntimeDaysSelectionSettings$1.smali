.class Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings$1;
.super Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;
.source "ZenModeDowntimeDaysSelectionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;Landroid/content/Context;[I)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # [I

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings$1;->this$0:Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;

    invoke-direct {p0, p2, p3}, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;-><init>(Landroid/content/Context;[I)V

    return-void
.end method


# virtual methods
.method protected onChanged([I)V
    .locals 6
    .param p1, "days"    # [I

    .prologue
    const/4 v2, -0x1

    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings$1;->this$0:Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;->access$000(Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;)Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    move-result-object v0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->setSheduleInfo([IIIII)Z

    .line 67
    return-void
.end method
