.class public abstract Lnubia/fancydrawable/FancyDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "FancyDrawable.java"

# interfaces
.implements Lnubia/fancydrawable/FancyDrawableListener;


# instance fields
.field protected mAvailableHeight:I

.field protected mAvailableWidth:I

.field protected mHandler:Landroid/os/Handler;

.field protected mID:Ljava/lang/String;

.field protected mIntrinsicHeight:I

.field protected mIntrinsicWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput v0, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableWidth:I

    iput v0, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/fancydrawable/FancyDrawable;->mHandler:Landroid/os/Handler;

    const-string v0, ""

    iput-object v0, p0, Lnubia/fancydrawable/FancyDrawable;->mID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lnubia/fancydrawable/FancyDrawable;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lnubia/fancydrawable/FancyDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    iget v0, p0, Lnubia/fancydrawable/FancyDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    sub-int v0, p3, p1

    iput v0, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableWidth:I

    sub-int v0, p4, p2

    iput v0, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableHeight:I

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lnubia/fancydrawable/FancyDrawable;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lnubia/fancydrawable/FancyDrawable;->startToRun()V

    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    iput p1, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableHeight:I

    return-void
.end method

.method public setIntrinsicSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    iput p1, p0, Lnubia/fancydrawable/FancyDrawable;->mIntrinsicWidth:I

    iput p2, p0, Lnubia/fancydrawable/FancyDrawable;->mIntrinsicHeight:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    iput p1, p0, Lnubia/fancydrawable/FancyDrawable;->mAvailableWidth:I

    return-void
.end method

.method public startToRun()V
    .locals 0

    .prologue
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "nubia.fancydrawable.FancyDrawable"

    return-object v0
.end method
