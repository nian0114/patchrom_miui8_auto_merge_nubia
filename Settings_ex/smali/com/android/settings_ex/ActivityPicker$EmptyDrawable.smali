.class Lcom/android/settings_ex/ActivityPicker$EmptyDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ActivityPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ActivityPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyDrawable"
.end annotation


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 437
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 438
    iput p1, p0, Lcom/android/settings_ex/ActivityPicker$EmptyDrawable;->mWidth:I

    .line 439
    iput p2, p0, Lcom/android/settings_ex/ActivityPicker$EmptyDrawable;->mHeight:I

    .line 440
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 464
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/android/settings_ex/ActivityPicker$EmptyDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/android/settings_ex/ActivityPicker$EmptyDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/android/settings_ex/ActivityPicker$EmptyDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/android/settings_ex/ActivityPicker$EmptyDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 476
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 468
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 472
    return-void
.end method
