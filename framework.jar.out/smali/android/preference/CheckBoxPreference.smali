.class public Landroid/preference/CheckBoxPreference;
.super Landroid/preference/TwoStatePreference;
.source "CheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/CheckBoxPreference$1;,
        Landroid/preference/CheckBoxPreference$Listener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mListener:Landroid/preference/CheckBoxPreference$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v1, Landroid/preference/CheckBoxPreference$Listener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/preference/CheckBoxPreference$Listener;-><init>(Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference$1;)V

    iput-object v1, p0, Landroid/preference/CheckBoxPreference;->mListener:Landroid/preference/CheckBoxPreference$Listener;

    sget-object v1, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/preference/CheckBoxPreference;->setDisableDependentsState(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p1, p0, Landroid/preference/CheckBoxPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setCheckBoxPreferenceBindView(Landroid/view/View;ZLandroid/preference/CheckBoxPreference$Listener;)V
    .locals 2
    .param p1, "checkboxView"    # Landroid/view/View;
    .param p2, "checked"    # Z
    .param p3, "mListener"    # Landroid/preference/CheckBoxPreference$Listener;

    .prologue
    iget-object v1, p0, Landroid/preference/CheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lnubia/util/UiUtils;->isNubiaUi(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p1, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_0

    instance-of v1, p1, Landroid/widget/CheckBox;

    if-nez v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/CompoundButton;

    .local v0, "switchView":Landroid/widget/CompoundButton;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    check-cast p1, Landroid/widget/Checkable;

    .end local p1    # "checkboxView":Landroid/view/View;
    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    invoke-virtual {v0, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .end local v0    # "switchView":Landroid/widget/CompoundButton;
    :goto_0
    return-void

    .restart local p1    # "checkboxView":Landroid/view/View;
    :cond_0
    check-cast p1, Landroid/widget/Checkable;

    .end local p1    # "checkboxView":Landroid/view/View;
    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .restart local p1    # "checkboxView":Landroid/view/View;
    :cond_1
    check-cast p1, Landroid/widget/Checkable;

    .end local p1    # "checkboxView":Landroid/view/View;
    iget-boolean v1, p0, Landroid/preference/CheckBoxPreference;->mChecked:Z

    invoke-interface {p1, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "checkboxView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/preference/CheckBoxPreference;->mChecked:Z

    iget-object v2, p0, Landroid/preference/CheckBoxPreference;->mListener:Landroid/preference/CheckBoxPreference$Listener;

    invoke-direct {p0, v0, v1, v2}, Landroid/preference/CheckBoxPreference;->setCheckBoxPreferenceBindView(Landroid/view/View;ZLandroid/preference/CheckBoxPreference$Listener;)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/preference/CheckBoxPreference;->syncSummaryView(Landroid/view/View;)V

    return-void
.end method
