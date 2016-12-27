.class Lcom/android/settings_ex/notification/ZenModeSettings$4;
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
    .line 377
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$4;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 380
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 381
    .local v0, "val":Z
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$4;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mDisableListeners:Z
    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$000(Lcom/android/settings_ex/notification/ZenModeSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 382
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$4;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;
    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$200(Lcom/android/settings_ex/notification/ZenModeSettings;)Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->setAllowRepeatCalls(Z)Z

    move-result v1

    goto :goto_0
.end method
