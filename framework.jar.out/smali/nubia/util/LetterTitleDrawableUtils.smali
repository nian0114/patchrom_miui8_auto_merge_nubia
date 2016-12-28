.class public Lnubia/util/LetterTitleDrawableUtils;
.super Ljava/lang/Object;
.source "LetterTitleDrawableUtils.java"


# static fields
.field private static final IMAGE_DEFAULT_HEIGH:I = 0xa0

.field private static final IMAGE_DEFAULT_WIDTH:I = 0xa0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;ZII)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "isCircular"    # Z
    .param p2, "width"    # I
    .param p3, "heigh"    # I

    .prologue
    const/4 v3, 0x0

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_3

    :cond_2
    const/16 p2, 0xa0

    const/16 p3, 0xa0

    :cond_3
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v3, v3, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_0

    invoke-static {v0}, Lnubia/util/LetterTitleDrawableUtils;->setRoundIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultBitmap(Landroid/content/res/Resources;Lnubia/widget/DefaultImageRequest;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "defaultImageRequest"    # Lnubia/widget/DefaultImageRequest;

    .prologue
    const/4 v2, 0x0

    invoke-static {p0, p1}, Lnubia/util/LetterTitleDrawableUtils;->getDefaultDrawable(Landroid/content/res/Resources;Lnubia/widget/DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, p1, Lnubia/widget/DefaultImageRequest;->mIsCircular:Z

    invoke-static {v0, v1, v2, v2}, Lnubia/util/LetterTitleDrawableUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;ZII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultBitmap(Landroid/content/res/Resources;Lnubia/widget/DefaultImageRequest;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "defaultImageRequest"    # Lnubia/widget/DefaultImageRequest;
    .param p2, "width"    # I
    .param p3, "heigh"    # I

    .prologue
    invoke-static {p0, p1}, Lnubia/util/LetterTitleDrawableUtils;->getDefaultDrawable(Landroid/content/res/Resources;Lnubia/widget/DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, p1, Lnubia/widget/DefaultImageRequest;->mIsCircular:Z

    invoke-static {v0, v1, p2, p3}, Lnubia/util/LetterTitleDrawableUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;ZII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDrawable(Landroid/content/res/Resources;Lnubia/widget/DefaultImageRequest;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "defaultImageRequest"    # Lnubia/widget/DefaultImageRequest;

    .prologue
    new-instance v0, Lnubia/widget/LetterTitleDrawable;

    iget v1, p1, Lnubia/widget/DefaultImageRequest;->mCardId:I

    invoke-direct {v0, p0, v1}, Lnubia/widget/LetterTitleDrawable;-><init>(Landroid/content/res/Resources;I)V

    .local v0, "drawable":Lnubia/widget/LetterTitleDrawable;
    if-eqz p1, :cond_0

    iget-object v1, p1, Lnubia/widget/DefaultImageRequest;->mIdentifier:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iget-object v2, p1, Lnubia/widget/DefaultImageRequest;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnubia/widget/LetterTitleDrawable;->setContactDetails(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget v1, p1, Lnubia/widget/DefaultImageRequest;->mContactType:I

    invoke-virtual {v0, v1}, Lnubia/widget/LetterTitleDrawable;->setContactType(I)V

    iget v1, p1, Lnubia/widget/DefaultImageRequest;->mScale:F

    invoke-virtual {v0, v1}, Lnubia/widget/LetterTitleDrawable;->setScale(F)V

    iget v1, p1, Lnubia/widget/DefaultImageRequest;->mOffset:F

    invoke-virtual {v0, v1}, Lnubia/widget/LetterTitleDrawable;->setOffset(F)V

    iget-boolean v1, p1, Lnubia/widget/DefaultImageRequest;->mIsCircular:Z

    invoke-virtual {v0, v1}, Lnubia/widget/LetterTitleDrawable;->setIsCircular(Z)V

    iget v1, p1, Lnubia/widget/DefaultImageRequest;->mCardResType:I

    invoke-virtual {v0, v1}, Lnubia/widget/LetterTitleDrawable;->setCardResType(I)V

    :cond_0
    return-object v0

    :cond_1
    iget-object v1, p1, Lnubia/widget/DefaultImageRequest;->mDisplayName:Ljava/lang/String;

    iget-object v2, p1, Lnubia/widget/DefaultImageRequest;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnubia/widget/LetterTitleDrawable;->setContactDetails(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setRoundIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .local v5, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .local v1, "height":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v7, v7, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v4, "rect":Landroid/graphics/Rect;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v5, 0x2

    int-to-float v8, v8

    invoke-virtual {v0, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v2
.end method
