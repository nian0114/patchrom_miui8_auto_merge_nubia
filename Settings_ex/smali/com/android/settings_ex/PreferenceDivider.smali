.class public Lcom/android/settings_ex/PreferenceDivider;
.super Landroid/preference/PreferenceCategory;
.source "PreferenceDivider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 16
    const v0, 0x7f0400d7

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/PreferenceDivider;->setLayoutResource(I)V

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/PreferenceDivider;->setWidgetLayoutResource(I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const v0, 0x7f0400d7

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/PreferenceDivider;->setLayoutResource(I)V

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/PreferenceDivider;->setWidgetLayoutResource(I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const v0, 0x7f0400d7

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/PreferenceDivider;->setLayoutResource(I)V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/PreferenceDivider;->setWidgetLayoutResource(I)V

    .line 30
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceCategory;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 35
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f120077

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "divider":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 37
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    return-object v2
.end method

.method protected onPrepareAddPreference(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 46
    instance-of v0, p1, Lcom/android/settings_ex/PreferenceDivider;

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a PreferenceDivider directly to a PreferenceDivider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onPrepareAddPreference(Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method
