.class Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;
.super Landroid/preference/Preference;
.source "MultiSettingsPreference.java"


# instance fields
.field private mAppinfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

.field private mBreathlight:Landroid/widget/CheckBox;

.field private mBreathlightListenerListener:Landroid/view/View$OnClickListener;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mLockscreen:Landroid/widget/CheckBox;

.field private mLockscreenListener:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "info"    # Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const v0, 0x7f0400e4

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->setLayoutResource(I)V

    .line 41
    iput-object p4, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mAppinfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "info"    # Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getAppSettingsInfo()Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mAppinfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    return-object v0
.end method

.method public getBreathlight()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mBreathlight:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLockscreen()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mLockscreen:Landroid/widget/CheckBox;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 48
    const v2, 0x7f120258

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 49
    .local v1, "mIcon":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    const v2, 0x7f120259

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    .local v0, "mAppname":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mAppinfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const v2, 0x7f12025b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mLockscreen:Landroid/widget/CheckBox;

    .line 53
    const v2, 0x7f12025a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mBreathlight:Landroid/widget/CheckBox;

    .line 54
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mAppinfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings_ex/notificationcenter/ui/Checkboxutils;->isSwitchEnable(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mAppinfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->isModified()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mLockscreen:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mAppinfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/settings_ex/notificationcenter/ui/Checkboxutils;->isSwitchEnable(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 58
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mBreathlight:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mAppinfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/android/settings_ex/notificationcenter/ui/Checkboxutils;->isSwitchEnable(Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 65
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mLockscreen:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mLockscreenListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mBreathlight:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mBreathlightListenerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mLockscreen:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 62
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mBreathlight:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 63
    iget-object v2, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mAppinfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    iget-object v3, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mAppinfo:Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;

    invoke-virtual {v3}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->getFlag()I

    move-result v3

    and-int/lit8 v3, v3, 0x19

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfo;->setFlag(I)V

    goto :goto_0
.end method

.method public setBreathlightListenerListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mBreathlightListenerListener:Landroid/view/View$OnClickListener;

    .line 95
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 79
    return-void
.end method

.method public setLockscreenListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsPreference;->mLockscreenListener:Landroid/view/View$OnClickListener;

    .line 91
    return-void
.end method
