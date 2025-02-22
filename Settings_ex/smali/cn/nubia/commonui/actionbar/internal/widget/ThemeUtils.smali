.class Lcn/nubia/commonui/actionbar/internal/widget/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field private static final DISABLED_STATE_SET:[I

.field private static final EMPTY_STATE_SET:[I

.field private static final TEMP_ARRAY:[I

.field private static final TL_TYPED_VALUE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    .line 30
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    .line 31
    new-array v0, v2, [I

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    .line 33
    new-array v0, v3, [I

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/ThemeUtils;->TEMP_ARRAY:[I

    return-void
.end method

.method static createDisabledStateList(II)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "textColor"    # I
    .param p1, "disabledTextColor"    # I

    .prologue
    const/4 v3, 0x2

    .line 38
    new-array v2, v3, [[I

    .line 39
    .local v2, "states":[[I
    new-array v0, v3, [I

    .line 40
    .local v0, "colors":[I
    const/4 v1, 0x0

    .line 43
    .local v1, "i":I
    sget-object v3, Lcn/nubia/commonui/actionbar/internal/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v3, v2, v1

    .line 44
    aput p1, v0, v1

    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 48
    sget-object v3, Lcn/nubia/commonui/actionbar/internal/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v3, v2, v1

    .line 49
    aput p0, v0, v1

    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 52
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method static getDisabledThemeAttrColor(Landroid/content/Context;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .prologue
    .line 76
    invoke-static {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 77
    .local v0, "csl":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    sget-object v3, Lcn/nubia/commonui/actionbar/internal/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 88
    :goto_0
    return v3

    .line 83
    :cond_0
    invoke-static {}, Lcn/nubia/commonui/actionbar/internal/widget/ThemeUtils;->getTypedValue()Landroid/util/TypedValue;

    move-result-object v2

    .line 85
    .local v2, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010033

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 86
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    .line 88
    .local v1, "disabledAlpha":F
    invoke-static {p0, p1, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;IF)I

    move-result v3

    goto :goto_0
.end method

.method static getThemeAttrColor(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .prologue
    const/4 v2, 0x0

    .line 56
    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/ThemeUtils;->TEMP_ARRAY:[I

    aput p1, v1, v2

    .line 57
    const/4 v1, 0x0

    sget-object v2, Lcn/nubia/commonui/actionbar/internal/widget/ThemeUtils;->TEMP_ARRAY:[I

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static getThemeAttrColor(Landroid/content/Context;IF)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I
    .param p2, "alpha"    # F

    .prologue
    .line 102
    invoke-static {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 103
    .local v0, "color":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 104
    .local v1, "originalAlpha":I
    int-to-float v2, v1

    mul-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v0, v2}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    return v2
.end method

.method static getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .prologue
    const/4 v2, 0x0

    .line 66
    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/ThemeUtils;->TEMP_ARRAY:[I

    aput p1, v1, v2

    .line 67
    const/4 v1, 0x0

    sget-object v2, Lcn/nubia/commonui/actionbar/internal/widget/ThemeUtils;->TEMP_ARRAY:[I

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static getTypedValue()Landroid/util/TypedValue;
    .locals 2

    .prologue
    .line 93
    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    .line 94
    .local v0, "typedValue":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 95
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "typedValue":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 96
    .restart local v0    # "typedValue":Landroid/util/TypedValue;
    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 98
    :cond_0
    return-object v0
.end method
