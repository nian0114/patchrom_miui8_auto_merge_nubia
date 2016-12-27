.class public Lcom/android/settings_ex/FontSizePreference;
.super Landroid/preference/nubia/CheckBoxPreference;
.source "FontSizePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/FontSizePreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings_ex/FontSizePreference$OnClickListener;

.field private summarySize:F

.field private titleSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/FontSizePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/FontSizePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/nubia/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/FontSizePreference;->mListener:Lcom/android/settings_ex/FontSizePreference$OnClickListener;

    .line 30
    const v1, 0x7f040145

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/FontSizePreference;->setWidgetLayoutResource(I)V

    .line 32
    sget-object v1, Lcom/android/settings_ex/R$styleable;->FontSizePreference:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 33
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/FontSizePreference;->titleSize:F

    .line 34
    const/4 v1, 0x1

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/FontSizePreference;->summarySize:F

    .line 35
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/preference/nubia/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 62
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    .local v1, "title":Landroid/widget/TextView;
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    .local v0, "summary":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 67
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 68
    iget v2, p0, Lcom/android/settings_ex/FontSizePreference;->titleSize:F

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 69
    iget v2, p0, Lcom/android/settings_ex/FontSizePreference;->summarySize:F

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 71
    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/FontSizePreference;->mListener:Lcom/android/settings_ex/FontSizePreference$OnClickListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/FontSizePreference;->mListener:Lcom/android/settings_ex/FontSizePreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings_ex/FontSizePreference$OnClickListener;->onRadioButtonClicked(Lcom/android/settings_ex/FontSizePreference;)V

    .line 57
    :cond_0
    return-void
.end method

.method setOnClickListener(Lcom/android/settings_ex/FontSizePreference$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_ex/FontSizePreference$OnClickListener;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings_ex/FontSizePreference;->mListener:Lcom/android/settings_ex/FontSizePreference$OnClickListener;

    .line 50
    return-void
.end method
