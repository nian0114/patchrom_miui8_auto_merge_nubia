.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;
.super Ljava/lang/Object;
.source "PageFlippingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v3, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->val$uploadHashcodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v3, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->val$uploadHashcodes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "hashcode":I
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v3, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->val$uploadTextures:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "textureId":I
    if-eqz v2, :cond_0

    const-string v3, "PageFlippingController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uploadPageFlippingTextures i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; hashcode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; textureId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v3, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    # getter for: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;
    invoke-static {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$1400(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->setTextureId(II)V

    :goto_1
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v3, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    # getter for: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;
    invoke-static {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$1400(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    move-result-object v4

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v3, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->val$uploadHashcodes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x3

    invoke-virtual {v4, v3, v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->setStatus(II)V

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v3, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    # getter for: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mTextureManagement:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;
    invoke-static {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$1400(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->deleteBitmap(I)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    const-string v3, "PageFlippingController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uploadPageFlippingTextures i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; hashcode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; textureId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "hashcode":I
    .end local v2    # "textureId":I
    :cond_1
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v3, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->val$uploadBitmaps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v3, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->val$uploadHashcodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v3, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->val$uploadTextures:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const-string v3, "PageFlippingController"

    const-string v4, "uploadPageFlippingTextures upload bitmap end"

    invoke-static {v3, v4}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Timer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uploadPageFlippingTextures upload bitmap end time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v3, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    # getter for: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;
    invoke-static {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$1500(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v3, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    # getter for: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->mLoopPageFlipping:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;
    invoke-static {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$1500(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->notifyGpuPreparedAppTexData()V

    :cond_2
    return-void
.end method
