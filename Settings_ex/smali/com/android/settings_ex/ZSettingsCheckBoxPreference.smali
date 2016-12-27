.class public Lcom/android/settings_ex/ZSettingsCheckBoxPreference;
.super Landroid/preference/nubia/CheckBoxPreference;
.source "ZSettingsCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ZSettingsCheckBoxPreference$1;,
        Lcom/android/settings_ex/ZSettingsCheckBoxPreference$Listener;
    }
.end annotation


# instance fields
.field private final mV5Listener:Lcom/android/settings_ex/ZSettingsCheckBoxPreference$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/preference/nubia/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Lcom/android/settings_ex/ZSettingsCheckBoxPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/ZSettingsCheckBoxPreference$Listener;-><init>(Lcom/android/settings_ex/ZSettingsCheckBoxPreference;Lcom/android/settings_ex/ZSettingsCheckBoxPreference$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/ZSettingsCheckBoxPreference;->mV5Listener:Lcom/android/settings_ex/ZSettingsCheckBoxPreference$Listener;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/preference/nubia/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Lcom/android/settings_ex/ZSettingsCheckBoxPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/ZSettingsCheckBoxPreference$Listener;-><init>(Lcom/android/settings_ex/ZSettingsCheckBoxPreference;Lcom/android/settings_ex/ZSettingsCheckBoxPreference$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/ZSettingsCheckBoxPreference;->mV5Listener:Lcom/android/settings_ex/ZSettingsCheckBoxPreference$Listener;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/nubia/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Lcom/android/settings_ex/ZSettingsCheckBoxPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/ZSettingsCheckBoxPreference$Listener;-><init>(Lcom/android/settings_ex/ZSettingsCheckBoxPreference;Lcom/android/settings_ex/ZSettingsCheckBoxPreference$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/ZSettingsCheckBoxPreference;->mV5Listener:Lcom/android/settings_ex/ZSettingsCheckBoxPreference$Listener;

    .line 53
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ZSettingsCheckBoxPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ZSettingsCheckBoxPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/ZSettingsCheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public notifyChanged()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Landroid/preference/nubia/CheckBoxPreference;->notifyChanged()V

    .line 95
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/nubia/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 77
    const v2, 0x7f1200be

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "checkableView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 79
    check-cast v2, Landroid/widget/Checkable;

    invoke-virtual {p0}, Lcom/android/settings_ex/ZSettingsCheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 83
    instance-of v2, v0, Lcn/nubia/commonui/widget/NubiaSwitch;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 84
    check-cast v1, Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 87
    .local v1, "switchView":Lcn/nubia/commonui/widget/NubiaSwitch;
    iget-object v2, p0, Lcom/android/settings_ex/ZSettingsCheckBoxPreference;->mV5Listener:Lcom/android/settings_ex/ZSettingsCheckBoxPreference$Listener;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    .end local v1    # "switchView":Lcn/nubia/commonui/widget/NubiaSwitch;
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method
