.class public Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;
.super Landroid/app/Fragment;
.source "ZenModeDowntimeDaysSelectionSettings.java"

# interfaces
.implements Lcom/android/settings_ex/notification/ZenModeListener;


# instance fields
.field private daySelectView:Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;

.field private final mHandler:Landroid/os/Handler;

.field private mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;)Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    return-object v0
.end method

.method private updateDays()V
    .locals 3

    .prologue
    .line 87
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v2}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->getSheduleInfo()Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    .line 88
    .local v1, "shedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    const/4 v0, 0x0

    .line 89
    .local v0, "days":[I
    if-eqz v1, :cond_0

    .line 90
    iget-object v0, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;->daySelectView:Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->updateCheckBoxState([I)V

    .line 93
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    new-instance v0, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/notification/ZenModeSettingsModel;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings_ex/notification/ZenModeSettingsModel;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;-><init>(Landroid/content/Context;Lcom/android/settings_ex/notification/IZenModeSettingsModel;Lcom/android/settings_ex/notification/ZenModeListener;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    .line 40
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->updateZenMode(Z)V

    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->updateZenModeConfig(Z)V

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v2}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->getSheduleInfo()Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    .line 59
    .local v1, "shedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    const/4 v0, 0x0

    .line 60
    .local v0, "days":[I
    if-eqz v1, :cond_0

    .line 61
    iget-object v0, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 63
    :cond_0
    new-instance v2, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings$1;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings$1;-><init>(Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;Landroid/content/Context;[I)V

    iput-object v2, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;->daySelectView:Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;

    .line 69
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;->daySelectView:Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;

    return-object v2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->unRegisterObserver()V

    .line 54
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->updateZenMode(Z)V

    .line 47
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->updateZenModeConfig(Z)V

    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->registerObserver()V

    .line 49
    return-void
.end method

.method public onZenModeChanged()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public onZenModeConfigChanged()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelectionSettings;->updateDays()V

    .line 84
    return-void
.end method
