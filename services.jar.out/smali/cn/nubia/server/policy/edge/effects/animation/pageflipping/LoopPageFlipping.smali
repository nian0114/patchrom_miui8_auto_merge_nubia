.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;
.super Ljava/lang/Object;
.source "LoopPageFlipping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$1;,
        Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$LoopAnimUpdateListener;
    }
.end annotation


# static fields
.field private static final FIRST_PAGE_STAY_FACTOR:F = 0.85f

.field private static final LOOP_TURN_APP:I = 0x2

.field private static final LOOP_TURN_FIRST_PAGE:I = 0x0

.field private static final LOOP_TURN_FIRST_PAGE_APP:I = 0x1

.field private static final LOOP_TURN_REVERSE_PAGE:I = 0x3

.field private static final PAGE_DIM_START:F = 0.6f

.field private static final TIME_APP_GAP:I = 0x78

.field private static final TIME_PAGE_APP_FLIPPING:I = 0x1f4


# instance fields
.field private final mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

.field private final mContext:Landroid/content/Context;

.field private final mEaseAppInterpolator:Landroid/view/animation/Interpolator;

.field private final mEaseInterpolator:Landroid/view/animation/Interpolator;

.field private mGpuPreparedAppTexureTime:I

.field private mIsGpuPreparedAppTextureData:Z

.field private mLoopPageAnimator:Landroid/animation/ValueAnimator;

.field private mLoopTurnFirstPageDurationTime:I

.field private mLoopTurnState:I

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

.field private mReverseTurnTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "animParam"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mIsGpuPreparedAppTextureData:Z

    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v1, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mEaseInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v1, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mEaseAppInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->onLoopAnimUpdate(I)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    return-object v0
.end method

.method private getLoopPageAppFactor(II)F
    .locals 2
    .param p1, "time"    # I
    .param p2, "appId"    # I

    .prologue
    mul-int/lit8 v0, p2, 0x78

    sub-int/2addr p1, v0

    int-to-float v0, p1

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getLoopPageAppNum()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHashcodeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method private getLoopPageFirstPageFactor(I)F
    .locals 2
    .param p1, "time"    # I

    .prologue
    int-to-float v0, p1

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopTurnFirstPageDurationTime:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private getLoopPageReverseAlpha(FF)F
    .locals 2
    .param p1, "time"    # F
    .param p2, "totalTime"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->getLoopPageAppNum()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->getLoopPageAppNum()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x78

    int-to-float v1, v1

    sub-float/2addr p1, v1

    const/high16 v1, 0x43fa0000    # 500.0f

    sub-float/2addr p1, v1

    :cond_0
    const/high16 v1, 0x43960000    # 300.0f

    sub-float/2addr p1, v1

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    div-float v1, p1, p2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method private getLoopPageReverseFactor(FF)F
    .locals 1
    .param p1, "time"    # F
    .param p2, "totalTime"    # F

    .prologue
    div-float v0, p1, p2

    return v0
.end method

.method private onLoopAnimUpdate(I)V
    .locals 5
    .param p1, "time"    # I

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFitWindowAdded()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mPageList:Ljava/util/List;

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopTurnState:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mPageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mPageList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->setTextureIdBg(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    :pswitch_1
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->processLoopTurnFirstPage(I)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->processLoopTurnFirstPageApp(I)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->processLoopTurnReversePage(I)V

    goto :goto_1

    .restart local v1    # "i":I
    :cond_1
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mPageList:Ljava/util/List;

    invoke-direct {v0, v4, v2, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;-><init>([Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;Ljava/util/List;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;)V

    .local v0, "drawContent":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v2, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onProcess(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private processLoopTurnApp(I)V
    .locals 12
    .param p1, "time"    # I

    .prologue
    const v11, 0x3f19999a    # 0.6f

    const/high16 v1, 0x3f800000    # 1.0f

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mGpuPreparedAppTexureTime:I

    sub-int/2addr p1, v0

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->getLoopPageAppNum()I

    move-result v9

    .local v9, "n":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_1

    invoke-direct {p0, p1, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->getLoopPageAppFactor(II)F

    move-result v3

    .local v3, "factor":F
    const/4 v0, 0x0

    cmpg-float v0, v3, v0

    if-ltz v0, :cond_0

    cmpl-float v0, v3, v1

    if-ltz v0, :cond_2

    :cond_0
    cmpl-float v0, v3, v1

    if-ltz v0, :cond_3

    add-int/lit8 v0, v9, -0x1

    if-ne v8, v0, :cond_3

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mGpuPreparedAppTexureTime:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mReverseTurnTime:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopTurnState:I

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    const/4 v2, 0x0

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHashcodeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getPage(FIIFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    .end local v3    # "factor":F
    move-result-object v10

    .local v10, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-virtual {v10, v11, v11}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->setDim(FF)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mPageList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v10    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    :cond_1
    return-void

    .restart local v3    # "factor":F
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mEaseAppInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v5, v8, 0x2

    move v6, v1

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getAppPage(FIIFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-result-object v10

    .restart local v10    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-virtual {v10, v11, v11}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->setDim(FF)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mPageList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v10    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private processLoopTurnFirstPage(I)V
    .locals 10
    .param p1, "time"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->getLoopPageFirstPageFactor(I)F

    move-result v7

    .local v7, "factorEx":F
    const/4 v8, 0x0

    .local v8, "needChange":Z
    cmpg-float v0, v7, v5

    if-gez v0, :cond_4

    const/4 v7, 0x0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->getLoopPageAppNum()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopTurnFirstPageDurationTime:I

    sub-int v0, p1, v0

    const/16 v2, 0x96

    if-le v0, v2, :cond_5

    const/4 v8, 0x1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mEaseInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getAnimFactorStart()F

    move-result v0

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getAnimFactorEnd()F

    move-result v2

    invoke-static {v7, v5, v4, v0, v2}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v1

    .local v1, "factor":F
    sub-float v6, v4, v1

    .local v6, "dim":F
    const v0, 0x3f19999a    # 0.6f

    cmpg-float v0, v6, v0

    if-gez v0, :cond_2

    const v6, 0x3f19999a    # 0.6f

    :cond_2
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    const/4 v2, 0x0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getPage(FIIFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-result-object v9

    .local v9, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-virtual {v9, v6, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->setDim(FF)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mPageList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v3, v8, :cond_3

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->getLoopPageAppNum()I

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopTurnState:I

    if-nez v0, :cond_6

    const v0, 0x3f59999a    # 0.85f

    cmpl-float v0, v1, v0

    if-nez v0, :cond_6

    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mReverseTurnTime:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopTurnState:I

    :cond_3
    :goto_2
    return-void

    .end local v1    # "factor":F
    .end local v6    # "dim":F
    .end local v9    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    :cond_4
    cmpl-float v0, v7, v4

    if-lez v0, :cond_0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    .restart local v1    # "factor":F
    .restart local v6    # "dim":F
    .restart local v9    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    :cond_6
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mIsGpuPreparedAppTextureData:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopTurnState:I

    if-nez v0, :cond_3

    iput v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopTurnState:I

    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mGpuPreparedAppTexureTime:I

    goto :goto_2
.end method

.method private processLoopTurnFirstPageApp(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->processLoopTurnFirstPage(I)V

    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->processLoopTurnApp(I)V

    return-void
.end method

.method private processLoopTurnReversePage(I)V
    .locals 12
    .param p1, "time"    # I

    .prologue
    const/4 v2, 0x0

    const v11, 0x3f59999a    # 0.85f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mReverseTurnTime:I

    sub-int/2addr p1, v0

    invoke-static {v11, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getPageAnimationTime(FF)I

    move-result v0

    int-to-float v10, v0

    .local v10, "totalTime":F
    int-to-float v0, p1

    invoke-direct {p0, v0, v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->getLoopPageReverseFactor(FF)F

    move-result v7

    .local v7, "factorEx":F
    int-to-float v0, p1

    invoke-direct {p0, v0, v10}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->getLoopPageReverseAlpha(FF)F

    move-result v4

    .local v4, "alpha":F
    const/4 v8, 0x0

    .local v8, "needFinish":Z
    cmpg-float v0, v7, v3

    if-gez v0, :cond_3

    const/4 v7, 0x0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mEaseInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    invoke-static {v7, v3, v5, v11, v3}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v1

    .local v1, "factor":F
    sub-float v6, v5, v1

    .local v6, "dim":F
    const v0, 0x3f19999a    # 0.6f

    cmpg-float v0, v6, v0

    if-gez v0, :cond_1

    const v6, 0x3f19999a    # 0.6f

    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHashcodeList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getPage(FIIFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-result-object v9

    .local v9, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-virtual {v9, v6, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->setDim(FF)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mPageList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_2

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopPageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mContext:Landroid/content/Context;

    const v3, 0x30c0058

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void

    .end local v1    # "factor":F
    .end local v6    # "dim":F
    .end local v9    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    :cond_3
    cmpl-float v0, v7, v5

    if-lez v0, :cond_0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    goto :goto_0
.end method


# virtual methods
.method cancelAnimation()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopPageAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopPageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopPageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopPageAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method initBeforeLoopAnim(IFFLjava/util/List;)Z
    .locals 1
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
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setDirect(IF)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setHashcodeList(Ljava/util/List;)V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->checkLoopPageAnimPara()Z

    move-result v0

    return v0
.end method

.method notifyGpuPreparedAppTexData()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopPageAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopPageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopPageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .local v0, "time":F
    float-to-int v1, v0

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mGpuPreparedAppTexureTime:I

    .end local v0    # "time":F
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mIsGpuPreparedAppTextureData:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mGpuPreparedAppTexureTime:I

    goto :goto_0
.end method

.method public startLoopAnim(F)V
    .locals 6
    .param p1, "startValue"    # F

    .prologue
    const/4 v4, 0x0

    const v0, 0x3f59999a    # 0.85f

    .local v0, "endValue":F
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v3, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setAnimFactorStart(F)V

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v3, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setAnimFactorEnd(F)V

    iput v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopTurnState:I

    iput-boolean v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mIsGpuPreparedAppTextureData:Z

    iput v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mGpuPreparedAppTexureTime:I

    iput v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mReverseTurnTime:I

    invoke-static {p1, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getPageAnimationTime(FF)I

    move-result v3

    iput v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopTurnFirstPageDurationTime:I

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopTurnFirstPageDurationTime:I

    int-to-float v3, v3

    const v4, 0x3f99999a    # 1.2f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopTurnFirstPageDurationTime:I

    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/EndAnimListener;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-direct {v1, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/EndAnimListener;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)V

    .local v1, "listener":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/EndAnimListener;
    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$LoopAnimUpdateListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$LoopAnimUpdateListener;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping$1;)V

    .local v2, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopPageAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopPageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopPageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopPageAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopPageAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xdac

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->mLoopPageAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x455ac000    # 3500.0f
    .end array-data
.end method
