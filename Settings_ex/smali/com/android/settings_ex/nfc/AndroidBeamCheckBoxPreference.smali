.class public Lcom/android/settings_ex/nfc/AndroidBeamCheckBoxPreference;
.super Landroid/preference/nubia/CheckBoxPreference;
.source "AndroidBeamCheckBoxPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/preference/nubia/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/preference/nubia/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/nubia/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/nubia/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 58
    instance-of v2, p1, Landroid/widget/Checkable;

    if-eqz v2, :cond_2

    .line 59
    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 69
    :goto_0
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    move-object v1, p1

    .line 70
    check-cast v1, Landroid/view/ViewGroup;

    .line 71
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 72
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/settings_ex/nfc/AndroidBeamCheckBoxPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 71
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 63
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    if-nez p2, :cond_1

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 63
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 67
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 75
    :cond_3
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/preference/nubia/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeamCheckBoxPreference;->isEnabled()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/nfc/AndroidBeamCheckBoxPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 55
    return-void
.end method
