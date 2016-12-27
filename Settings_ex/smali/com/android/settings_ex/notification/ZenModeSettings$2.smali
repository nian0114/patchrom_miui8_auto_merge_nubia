.class Lcom/android/settings_ex/notification/ZenModeSettings$2;
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
    .line 353
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 356
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 357
    .local v0, "on":Z
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mZenModeSwitch:Landroid/preference/nubia/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$300(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/preference/nubia/CheckBoxPreference;

    move-result-object v1

    const v2, 0x7f0c0c9b

    invoke-virtual {v1, v2}, Landroid/preference/nubia/CheckBoxPreference;->setTitle(I)V

    .line 358
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;
    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$200(Lcom/android/settings_ex/notification/ZenModeSettings;)Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->setZenMode(Z)V

    .line 359
    const/4 v1, 0x1

    return v1
.end method
