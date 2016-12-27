.class Lcom/android/settings_ex/notification/ZenModeSettings$1;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    .line 344
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$1;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 347
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$1;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mDisableListeners:Z
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$000(Lcom/android/settings_ex/notification/ZenModeSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v1

    .line 348
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$1;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # invokes: Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$100(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "timing_zen_mode"

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 349
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$1;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$200(Lcom/android/settings_ex/notification/ZenModeSettings;)Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->enableTimingZenMode(Z)Z

    move-result v1

    goto :goto_0

    .line 348
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
