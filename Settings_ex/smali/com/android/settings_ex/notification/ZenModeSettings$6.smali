.class Lcom/android/settings_ex/notification/ZenModeSettings$6;
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
    .line 412
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$6;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 415
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 416
    .local v0, "val":I
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$6;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mDisableListeners:Z
    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$000(Lcom/android/settings_ex/notification/ZenModeSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    :goto_0
    return v3

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$6;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mPresenter:Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;
    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$200(Lcom/android/settings_ex/notification/ZenModeSettings;)Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/notification/ZenModeSettingsPresenter;->setAllowCallsFrom(I)Z

    .line 418
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$6;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mTelSetting:Lcn/nubia/commonui/preference/ListPreference;
    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$500(Lcom/android/settings_ex/notification/ZenModeSettings;)Lcn/nubia/commonui/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettings$6;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mEntries:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$400(Lcom/android/settings_ex/notification/ZenModeSettings;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
