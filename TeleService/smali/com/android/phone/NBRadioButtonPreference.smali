.class Lcom/android/phone/NBRadioButtonPreference;
.super Landroid/preference/TwoStatePreference;
.source "NBRadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NBRadioButtonPreference$OnCheckedChangedListener;
    }
.end annotation


# instance fields
.field private mChecked:Z

.field private mOnCheckedChangedListener:Lcom/android/phone/NBRadioButtonPreference$OnCheckedChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/NBRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/NBRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/phone/NBRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

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

    sget-object v2, Lcom/android/phone/R$styleable;->RadioButtonPreference:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .local v1, "checked":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Lcom/android/phone/NBRadioButtonPreference;->setChecked(Z)V

    const v2, 0x7f040054

    invoke-virtual {p0, v2}, Lcom/android/phone/NBRadioButtonPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/phone/NBRadioButtonPreference;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    const v1, 0x7f1000b5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .local v0, "radioButton":Landroid/widget/RadioButton;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/NBRadioButtonPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/phone/NBRadioButtonPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/NBRadioButtonPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    iget-boolean v1, p0, Lcom/android/phone/NBRadioButtonPreference;->mChecked:Z

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lcom/android/phone/NBRadioButtonPreference;->mChecked:Z

    iget-object v1, p0, Lcom/android/phone/NBRadioButtonPreference;->mOnCheckedChangedListener:Lcom/android/phone/NBRadioButtonPreference$OnCheckedChangedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NBRadioButtonPreference;->mOnCheckedChangedListener:Lcom/android/phone/NBRadioButtonPreference$OnCheckedChangedListener;

    iget-boolean v2, p0, Lcom/android/phone/NBRadioButtonPreference;->mChecked:Z

    invoke-interface {v1, p0, v2}, Lcom/android/phone/NBRadioButtonPreference$OnCheckedChangedListener;->onCheckedChanged(Lcom/android/phone/NBRadioButtonPreference;Z)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/NBRadioButtonPreference;->persistBoolean(Z)Z

    invoke-virtual {p0}, Lcom/android/phone/NBRadioButtonPreference;->shouldDisableDependents()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/phone/NBRadioButtonPreference;->notifyDependencyChange(Z)V

    invoke-virtual {p0}, Lcom/android/phone/NBRadioButtonPreference;->notifyChanged()V

    :cond_1
    return-void

    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setOnCheckedChangedListener(Lcom/android/phone/NBRadioButtonPreference$OnCheckedChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/phone/NBRadioButtonPreference$OnCheckedChangedListener;

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBRadioButtonPreference;->mOnCheckedChangedListener:Lcom/android/phone/NBRadioButtonPreference$OnCheckedChangedListener;

    return-void
.end method
