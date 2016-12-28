.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;
.super Ljava/lang/Object;
.source "TextureManagement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PageFlippingController"


# instance fields
.field private final mTextureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadId:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "threadId"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    iput-wide p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mThreadId:J

    return-void
.end method

.method private checkThread(Ljava/lang/String;)V
    .locals 6
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .local v0, "currentThreadId":J
    iget-wide v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mThreadId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    const-string v2, "PageFlippingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TextureManagement should call in the same thread. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mThreadId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mThreadId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currentThreadId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private getItem(I)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    .locals 4
    .param p1, "hashcode"    # I

    .prologue
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    .local v1, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    iget v3, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mHashcode:I

    if-ne p1, v3, :cond_0

    .end local v1    # "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    :goto_1
    return-object v1

    .restart local v1    # "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isValidate(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;)Z
    .locals 2
    .param p1, "item"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    .prologue
    if-eqz p1, :cond_2

    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mTexureId:I

    if-lez v0, :cond_0

    const/4 v0, 0x3

    iget v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mStatus:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addItem(ILandroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "hashcode"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x1

    const-string v1, "addItem"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    const-string v1, "PageFlippingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addItem hashcode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->isExist(I)Z

    move-result v1

    if-ne v4, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "invalide_up_package"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eq p1, v1, :cond_0

    const-string v1, "invalide_down_package"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eq p1, v1, :cond_0

    const-string v1, "invalide_split_package"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eq p1, v1, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-ne v4, v1, :cond_3

    :cond_2
    const-string v1, "PageFlippingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addItem hashcode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; bitmap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; isRecycled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "TextureManagement addItem error!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->delItem(I)V

    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;)V

    .local v0, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    iput p1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mHashcode:I

    iput v4, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mStatus:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mWidth:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mHeight:I

    iput-object p2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public delItem(I)V
    .locals 2
    .param p1, "hashcode"    # I

    .prologue
    const-string v1, "delItem"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getItem(I)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    move-result-object v0

    .local v0, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->delItem(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;)V

    :cond_0
    return-void
.end method

.method public delItem(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;)V
    .locals 2
    .param p1, "item"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    .prologue
    const/4 v1, 0x0

    const-string v0, "delItem"

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mWidth:I

    iput v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mHeight:I

    iget-object v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mStatus:I

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mTexureId:I

    if-lez v0, :cond_2

    const/4 v0, 0x4

    iput v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mStatus:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public deleteBitmap(I)V
    .locals 3
    .param p1, "hashcode"    # I

    .prologue
    const-string v1, "deleteBitmap"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getItem(I)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    move-result-object v0

    .local v0, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mStatus:I

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const-string v1, "destroy"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    invoke-virtual {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->delItem(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getAllItemHashcode()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v4, "getAllItemHashcode"

    invoke-direct {p0, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    .local v2, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    invoke-direct {p0, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->isValidate(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mHashcode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    :cond_1
    return-object v0
.end method

.method public getNeedDelTextures(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "textureIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v3, "getNeedDelTextures"

    invoke-direct {p0, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    .local v1, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    if-nez v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v3, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mTexureId:I

    if-lez v3, :cond_0

    const/4 v3, 0x4

    iget v4, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mStatus:I

    if-ne v3, v4, :cond_0

    iget v3, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mHashcode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mTexureId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    :cond_2
    return-void
.end method

.method public getNeedUploadTextures(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "bitmapList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const-string v3, "getNeedUploadTextures"

    invoke-direct {p0, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->mTextureList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    .local v1, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    if-nez v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v3, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mTexureId:I

    if-nez v3, :cond_0

    iget-object v3, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget v3, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mHashcode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    :cond_2
    return-void
.end method

.method public getStatus(I)I
    .locals 2
    .param p1, "hashcode"    # I

    .prologue
    const-string v1, "getStatus"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getItem(I)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    move-result-object v0

    .local v0, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    if-eqz v0, :cond_0

    iget v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mStatus:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTextureHeight(I)I
    .locals 2
    .param p1, "hashcode"    # I

    .prologue
    const-string v1, "getTextureHeight"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getItem(I)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    move-result-object v0

    .local v0, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    if-eqz v0, :cond_0

    iget v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mHeight:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTextureId(I)I
    .locals 2
    .param p1, "hashcode"    # I

    .prologue
    const-string v1, "getTextureId"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getItem(I)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    move-result-object v0

    .local v0, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    if-eqz v0, :cond_0

    iget v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mTexureId:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTextureWidth(I)I
    .locals 2
    .param p1, "hashcode"    # I

    .prologue
    const-string v1, "getTextureWidth"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getItem(I)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    move-result-object v0

    .local v0, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    if-eqz v0, :cond_0

    iget v1, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mWidth:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isExist(I)Z
    .locals 2
    .param p1, "hashcode"    # I

    .prologue
    const-string v1, "isExist"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getItem(I)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    move-result-object v0

    .local v0, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->isValidate(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setStatus(II)V
    .locals 2
    .param p1, "hashcode"    # I
    .param p2, "status"    # I

    .prologue
    const-string v1, "setStatus"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getItem(I)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    move-result-object v0

    .local v0, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    if-eqz v0, :cond_0

    iput p2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mStatus:I

    :cond_0
    return-void
.end method

.method public setTextureId(II)V
    .locals 2
    .param p1, "hashcode"    # I
    .param p2, "textureId"    # I

    .prologue
    const-string v1, "setTextureId"

    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->checkThread(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->getItem(I)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;

    move-result-object v0

    .local v0, "item":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;
    if-eqz v0, :cond_0

    iput p2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement$TextureItem;->mTexureId:I

    :cond_0
    return-void
.end method
