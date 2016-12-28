.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;
.super Ljava/lang/Object;
.source "SinglePageFlipping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$1;,
        Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$FailAnimUpdateListener;,
        Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$succAnimUpdateListener;,
        Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PageFlippingController"

.field private static final TIME_NEW_APP_STAY:I = 0x12c


# instance fields
.field private mAlphaAnimTime:I

.field private mAlphaStartTime:I

.field private final mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

.field private mIsSetPageSuccTime:Z

.field private final mLinearInterpolator:Landroid/view/animation/Interpolator;

.field private mPageAnimTime:I

.field private mPageEndAnimator:Landroid/animation/ValueAnimator;

.field private mPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;",
            ">;"
        }
    .end annotation
.end field

.field private mPageStartAnimator:Landroid/animation/ValueAnimator;

.field private mPageTotalTime:I

.field private mSystemGestureService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;


# direct methods
.method public constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;)V
    .locals 1
    .param p1, "param"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;
    .param p2, "service"    # Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mSystemGestureService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;F)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;
    .param p1, "x1"    # F

    .prologue
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->onPreAnimUpdate(F)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;F)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;
    .param p1, "x1"    # F

    .prologue
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->onSuccAnimUpdate(F)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;F)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;
    .param p1, "x1"    # F

    .prologue
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->onFailAnimUpdate(F)V

    return-void
.end method

.method private cancelAnimation(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 p1, 0x0

    :cond_1
    return-void
.end method

.method static getDimByFactor(F)F
    .locals 4
    .param p0, "factor"    # F

    .prologue
    const/4 v0, 0x0

    const v1, 0x3f4ccccd    # 0.8f

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v0

    return v0
.end method

.method private onFailAnimUpdate(F)V
    .locals 11
    .param p1, "value"    # F

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFitWindowAdded()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageAnimTime:I

    int-to-float v0, v0

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getAnimFactorStart()F

    move-result v2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getAnimFactorEnd()F

    move-result v3

    invoke-static {p1, v5, v0, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v1

    .local v1, "factor":F
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    int-to-float v0, v0

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {p1, v0, v2, v9, v5}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v4

    .local v4, "alpha":F
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getPage(FIIFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-result-object v8

    .local v8, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->getDimByFactor(F)F

    move-result v6

    .local v6, "bgDim":F
    invoke-virtual {v8, v9, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->setDim(FF)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    invoke-direct {v7, v10, v0, v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;-><init>([Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;Ljava/util/List;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;)V

    .local v7, "drawContent":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onProcess(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;)V

    goto :goto_0
.end method

.method private onPreAnimUpdate(F)V
    .locals 10
    .param p1, "value"    # F

    .prologue
    const/4 v9, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFitWindowAdded()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getPage(FIIFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-result-object v8

    .local v8, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-static {p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->getDimByFactor(F)F

    move-result v6

    .local v6, "bgDim":F
    invoke-virtual {v8, v4, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->setDim(FF)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setFactor(F)V

    new-instance v7, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    invoke-direct {v7, v9, v0, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;-><init>([Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;Ljava/util/List;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;)V

    .local v7, "drawContent":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onProcess(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;)V

    goto :goto_0
.end method

.method private onSuccAnimUpdate(F)V
    .locals 14
    .param p1, "value"    # F

    .prologue
    const/4 v13, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v12, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFitWindowAdded()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mIsSetPageSuccTime:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->isAppWindowCreated()Z

    move-result v0

    if-eqz v0, :cond_3

    float-to-int v0, p1

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    const/16 v0, 0x2711

    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mSystemGestureService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    invoke-interface {v10, v2}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getSingleSlideFuns(I)I

    move-result v10

    if-ne v0, v10, :cond_4

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageAnimTime:I

    sub-int/2addr v0, v10

    const/16 v10, 0x12c

    if-ge v0, v10, :cond_1

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageAnimTime:I

    add-int/lit16 v0, v0, 0x12c

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    :cond_1
    const/16 v0, 0x64

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    :goto_1
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    add-int v9, v0, v10

    .local v9, "time":I
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageAnimTime:I

    if-ge v9, v0, :cond_2

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageAnimTime:I

    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    sub-int/2addr v0, v10

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    iget v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageAnimTime:I

    :cond_2
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    if-ge v9, v0, :cond_5

    iput v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    :goto_2
    iput-boolean v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mIsSetPageSuccTime:Z

    const-string v0, "PageFlippingController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPageSuccAnimUpdate isCreated mAlphaStartTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; mAlphaAnimTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PageFlippingController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPageSuccAnimUpdate isCreated mPageTotalTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; mPageAnimTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageAnimTime:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9    # "time":I
    :cond_3
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageAnimTime:I

    int-to-float v0, v0

    iget-object v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getAnimFactorStart()F

    move-result v10

    iget-object v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v11}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getAnimFactorEnd()F

    move-result v11

    invoke-static {p1, v12, v0, v10, v11}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v1

    .local v1, "factor":F
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    int-to-float v0, v0

    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    iget v11, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-static {p1, v0, v10, v4, v12}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v5

    .local v5, "bgAlpha":F
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getPage(FIIFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-result-object v8

    .local v8, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->getDimByFactor(F)F

    move-result v6

    .local v6, "bgDim":F
    invoke-virtual {v8, v4, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->setDim(FF)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    invoke-direct {v7, v13, v0, v13}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;-><init>([Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;Ljava/util/List;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;)V

    .local v7, "drawContent":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onProcess(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;)V

    goto/16 :goto_0

    .end local v1    # "factor":F
    .end local v5    # "bgAlpha":F
    .end local v6    # "bgDim":F
    .end local v7    # "drawContent":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;
    .end local v8    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    :cond_4
    const/16 v0, 0xc8

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    goto/16 :goto_1

    .restart local v9    # "time":I
    :cond_5
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    sub-int/2addr v0, v10

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    goto/16 :goto_2
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageStartAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->cancelAnimation(Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->cancelAnimation(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public initBeforeFailAnim()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->checkPageAnimPara(Z)Z

    move-result v0

    return v0
.end method

.method public initBeforePreAnim(IFFLjava/util/List;)Z
    .locals 2
    .param p1, "direct"    # I
    .param p2, "downY"    # F
    .param p3, "currY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p4, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setDirect(IF)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setHashcodeList(Ljava/util/List;)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->checkPageAnimPara(Z)Z

    move-result v0

    return v0
.end method

.method public initBeforeSuccAnim(ILjava/util/List;)Z
    .locals 3
    .param p1, "direct"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "downY":F
    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setDirect(IF)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setHashcodeList(Ljava/util/List;)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->checkPageAnimPara(Z)Z

    move-result v1

    return v1

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHeight()I

    move-result v1

    int-to-float v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public initBeforeUpdateAnim(IFFLjava/util/List;)Z
    .locals 2
    .param p1, "direct"    # I
    .param p2, "downY"    # F
    .param p3, "currY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p4, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setDirect(IF)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setHashcodeList(Ljava/util/List;)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->checkPageAnimPara(Z)Z

    move-result v0

    return v0
.end method

.method public startFailAnim(FF)V
    .locals 6
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F

    .prologue
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v3, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setAnimFactorStart(F)V

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v3, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setAnimFactorEnd(F)V

    const/16 v3, 0x1f4

    iput v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    invoke-static {p1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getPageAnimationTime(FF)I

    move-result v3

    iput v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageAnimTime:I

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageAnimTime:I

    iput v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    const/16 v3, 0x14

    iput v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    add-int v1, v3, v4

    .local v1, "time":I
    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    if-ge v1, v3, :cond_0

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    :goto_0
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/EndAnimListener;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-direct {v0, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/EndAnimListener;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)V

    .local v0, "listener":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/EndAnimListener;
    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$FailAnimUpdateListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$FailAnimUpdateListener;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$1;)V

    .local v2, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .end local v0    # "listener":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/EndAnimListener;
    .end local v2    # "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    :cond_0
    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    goto :goto_0
.end method

.method public startPreAnim(FF)V
    .locals 6
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F

    .prologue
    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$1;)V

    .local v1, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const-string v2, "PageFlippingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPreAnim startValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; endValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageStartAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageStartAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageStartAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {p1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getPageAnimationTime(FF)I

    move-result v0

    .local v0, "time":I
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageStartAnimator:Landroid/animation/ValueAnimator;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageStartAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startSuccAnim(FF)V
    .locals 6
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v2, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setAnimFactorStart(F)V

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v2, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setAnimFactorEnd(F)V

    iput-boolean v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mIsSetPageSuccTime:Z

    const/16 v2, 0xdac

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    invoke-static {p1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getPageAnimationTime(FF)I

    move-result v2

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageAnimTime:I

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    add-int/lit16 v2, v2, -0xc8

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    const/16 v2, 0xc8

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/EndAnimListener;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-direct {v0, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/EndAnimListener;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)V

    .local v0, "listener":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/EndAnimListener;
    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$succAnimUpdateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$succAnimUpdateListener;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$1;)V

    .local v1, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public updateAnim(FFF)V
    .locals 11
    .param p1, "downY"    # F
    .param p2, "currY"    # F
    .param p3, "factorEnd"    # F

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageStartAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageStartAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactorByY(F)F

    move-result v1

    .local v1, "factor":F
    cmpl-float v0, v1, p3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageStartAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .local v8, "factorCurr":F
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageStartAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v8, v4, v2

    aput v1, v4, v3

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .end local v8    # "factorCurr":F
    :cond_0
    :goto_0
    return-void

    .end local v1    # "factor":F
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->updateLineFlip(F)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactorByY(F)F

    move-result v1

    .restart local v1    # "factor":F
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getPage(FIIFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-result-object v9

    .local v9, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->getDimByFactor(F)F

    move-result v6

    .local v6, "bgDim":F
    invoke-virtual {v9, v4, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->setDim(FF)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setFactor(F)V

    new-instance v7, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    invoke-direct {v7, v10, v0, v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;-><init>([Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;Ljava/util/List;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;)V

    .local v7, "drawContent":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onProcess(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;)V

    goto :goto_0
.end method
