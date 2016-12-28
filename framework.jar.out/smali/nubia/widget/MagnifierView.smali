.class Lnubia/widget/MagnifierView;
.super Landroid/view/View;
.source "MagnifierView.java"


# static fields
.field static final PADDING_LEFT:I = 0xb

.field static final PADDING_TOP:I = 0x2


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/Rect;

.field private mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

.field private mMagnifierMaskDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mX:I

.field private mY:I

.field private sHeight:I

.field private sRadius:I

.field private sScale:F

.field private sWidth:I


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, 0x3fb33333    # 1.4f

    iput v0, p0, Lnubia/widget/MagnifierView;->sScale:F

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/widget/MagnifierView;->initDrawable(Landroid/content/Context;)V

    invoke-direct {p0}, Lnubia/widget/MagnifierView;->initRect()V

    iput-object p1, p0, Lnubia/widget/MagnifierView;->mAnchorView:Landroid/view/View;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnubia/widget/MagnifierView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lnubia/widget/MagnifierView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private drawSnapshot(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v1, p0, Lnubia/widget/MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .local v0, "saveCount":I
    iget v1, p0, Lnubia/widget/MagnifierView;->sScale:F

    iget v2, p0, Lnubia/widget/MagnifierView;->sScale:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v1, p0, Lnubia/widget/MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lnubia/widget/MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, Lnubia/widget/MagnifierView;->getSnapView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .end local v0    # "saveCount":I
    :cond_0
    return-void
.end method

.method private getSnapView()Landroid/view/View;
    .locals 3

    .prologue
    iget-object v0, p0, Lnubia/widget/MagnifierView;->mAnchorView:Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initDrawable(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "resource":Landroid/content/res/Resources;
    const v1, 0x30200db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x30200dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/MagnifierView;->mMagnifierMaskDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lnubia/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lnubia/widget/MagnifierView;->sHeight:I

    iget-object v1, p0, Lnubia/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lnubia/widget/MagnifierView;->sWidth:I

    const v1, 0x30200dc

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private initRect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lnubia/widget/MagnifierView;->sWidth:I

    iget v2, p0, Lnubia/widget/MagnifierView;->sHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lnubia/widget/MagnifierView;->mDstRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnubia/widget/MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget v0, p0, Lnubia/widget/MagnifierView;->sWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0xb

    iput v0, p0, Lnubia/widget/MagnifierView;->sRadius:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v0, p0, Lnubia/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lnubia/widget/MagnifierView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lnubia/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lnubia/widget/MagnifierView;->drawSnapshot(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lnubia/widget/MagnifierView;->mMagnifierMaskDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lnubia/widget/MagnifierView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lnubia/widget/MagnifierView;->mMagnifierMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lnubia/widget/MagnifierView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lnubia/widget/MagnifierView;->mDstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lnubia/widget/MagnifierView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    iget v0, p0, Lnubia/widget/MagnifierView;->sWidth:I

    iget v1, p0, Lnubia/widget/MagnifierView;->sHeight:I

    invoke-virtual {p0, v0, v1}, Lnubia/widget/MagnifierView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setPosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iput p1, p0, Lnubia/widget/MagnifierView;->mX:I

    iput p2, p0, Lnubia/widget/MagnifierView;->mY:I

    iget v0, p0, Lnubia/widget/MagnifierView;->mX:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lnubia/widget/MagnifierView;->setX(F)V

    iget v0, p0, Lnubia/widget/MagnifierView;->mY:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lnubia/widget/MagnifierView;->setY(F)V

    invoke-virtual {p0}, Lnubia/widget/MagnifierView;->invalidate()V

    return-void
.end method

.method public setShowRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "srcRect"    # Landroid/graphics/Rect;

    .prologue
    iget-object v0, p0, Lnubia/widget/MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public viewHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lnubia/widget/MagnifierView;->sHeight:I

    return v0
.end method

.method public viewWidth()I
    .locals 1

    .prologue
    iget v0, p0, Lnubia/widget/MagnifierView;->sWidth:I

    return v0
.end method
