.class Lcom/android/settings_ex/notification/ZenModeSettings$11;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeSettings;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$11;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetTime(II)Z
    .locals 6
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    const/4 v2, -0x1

    .line 515
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$11;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mDisableListeners:Z
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$000(Lcom/android/settings_ex/notification/ZenModeSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 516
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$11;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$200(Lcom/android/settings_ex/notification/ZenModeSettings;)Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    move-result-object v0

    const/4 v1, 0x0

    move v3, v2

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->setSheduleInfo([IIIII)Z

    move-result v0

    goto :goto_0
.end method
