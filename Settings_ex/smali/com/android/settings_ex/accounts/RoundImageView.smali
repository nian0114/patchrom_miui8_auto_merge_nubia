.class public Lcom/android/settings_ex/accounts/RoundImageView;
.super Landroid/widget/ImageView;
.source "RoundImageView.java"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/accounts/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/accounts/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/RoundImageView;->mPaint:Landroid/graphics/Paint;

    .line 33
    return-void
.end method

.method private getCircleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "pixels"    # I

    .prologue
    const/4 v8, 0x0

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 66
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 67
    .local v0, "canvas":Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 68
    .local v1, "color":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v3, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 69
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/settings_ex/accounts/RoundImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 71
    iget-object v5, p0, Lcom/android/settings_ex/accounts/RoundImageView;->mPaint:Landroid/graphics/Paint;

    const v6, -0xbdbdbe

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 74
    .local v4, "x":I
    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v4, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/settings_ex/accounts/RoundImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 75
    iget-object v5, p0, Lcom/android/settings_ex/accounts/RoundImageView;->mPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 76
    iget-object v5, p0, Lcom/android/settings_ex/accounts/RoundImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v3, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 77
    return-object v2
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/RoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 42
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 43
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 44
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 46
    :cond_0
    if-eqz v1, :cond_1

    .line 47
    const/16 v5, 0xe

    invoke-direct {p0, v1, v5}, Lcom/android/settings_ex/accounts/RoundImageView;->getCircleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 48
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 49
    .local v4, "rectSrc":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/RoundImageView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/RoundImageView;->getHeight()I

    move-result v6

    invoke-direct {v3, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 50
    .local v3, "rectDest":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/settings_ex/accounts/RoundImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    .line 51
    iget-object v5, p0, Lcom/android/settings_ex/accounts/RoundImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 55
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v3    # "rectDest":Landroid/graphics/Rect;
    .end local v4    # "rectSrc":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
