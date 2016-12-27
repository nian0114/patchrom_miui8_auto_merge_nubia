.class public Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
.super Landroid/preference/Preference;
.source "StorageItemPreference.java"


# instance fields
.field public final color1:I

.field public final color2:I

.field public userHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "titleRes"    # I
    .param p3, "colorRes1"    # I
    .param p4, "colorRes2"    # I

    .prologue
    .line 38
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/16 v5, -0x2710

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;III)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "titleRes"    # I
    .param p3, "colorRes1"    # I
    .param p4, "colorRes2"    # I
    .param p5, "flag"    # I

    .prologue
    .line 42
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/16 v5, -0x2710

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;IIII)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "colorRes1"    # I
    .param p4, "colorRes2"    # I
    .param p5, "userHandle"    # I

    .prologue
    const v3, -0xff01

    .line 47
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 49
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->color1:I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->color2:I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 53
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x7f0b0032

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 54
    .local v2, "width":I
    const v3, 0x7f0b0033

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 55
    .local v0, "height":I
    iget v3, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->color1:I

    iget v4, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->color2:I

    invoke-static {v2, v0, v3, v4}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->createRectShape(IIII)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 56
    const v3, 0x7f04013d

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setLayoutResource(I)V

    .line 63
    .end local v0    # "height":I
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "width":I
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    const v3, 0x7f0c03cb

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 66
    iput p5, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->userHandle:I

    .line 67
    return-void

    .line 58
    :cond_0
    iput v3, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->color1:I

    .line 59
    iput v3, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->color2:I

    .line 60
    const v3, 0x7f04013f

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setLayoutResource(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;IIII)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "colorRes1"    # I
    .param p4, "colorRes2"    # I
    .param p5, "userHandle"    # I
    .param p6, "flag"    # I

    .prologue
    const v3, -0xff01

    .line 71
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 72
    if-nez p6, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->color1:I

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->color2:I

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x7f0b0032

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 78
    .local v2, "width":I
    const v3, 0x7f0b0033

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 79
    .local v0, "height":I
    iget v3, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->color1:I

    iget v4, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->color2:I

    invoke-static {v2, v0, v3, v4}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->createRectShape(IIII)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 80
    const v3, 0x7f04013e

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setLayoutResource(I)V

    .line 86
    .end local v0    # "height":I
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "width":I
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    const v3, 0x7f0c03cb

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 89
    iput p5, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->userHandle:I

    .line 90
    return-void

    .line 82
    :cond_0
    iput v3, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->color1:I

    .line 83
    iput v3, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->color2:I

    goto :goto_0
.end method

.method private static createRectShape(IIII)Landroid/graphics/drawable/ShapeDrawable;
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "color1"    # I
    .param p3, "color2"    # I

    .prologue
    const/4 v1, 0x0

    .line 95
    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v8, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 96
    .local v8, "shape":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v8, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 97
    invoke-virtual {v8, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 98
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v4, p1

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 99
    .local v0, "grad":Landroid/graphics/LinearGradient;
    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 100
    return-object v8
.end method
