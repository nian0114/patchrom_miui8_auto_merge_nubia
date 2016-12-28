.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
.super Ljava/lang/Object;
.source "Line.java"


# instance fields
.field private mA:F

.field private mB:F

.field private mC:F

.field private mLength:F

.field private mPointTemp:Landroid/graphics/PointF;

.field public mX:[F

.field public mY:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->init()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "slope"    # F

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->init()V

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->init()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 4
    .param p1, "point1"    # Landroid/graphics/PointF;
    .param p2, "point2"    # Landroid/graphics/PointF;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->init()V

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;)V
    .locals 5
    .param p1, "line"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->init()V

    iget-object v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v0, v0, v2

    iget-object v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v1, v1, v2

    iget-object v2, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v2, v2, v4

    iget-object v3, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v3, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    new-array v0, v1, [F

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mPointTemp:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public crossoverPoint(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;)Z
    .locals 3
    .param p1, "line"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .param p2, "point"    # Landroid/graphics/PointF;

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v2, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/PointF;->x:F

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    iget v2, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v2, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/PointF;->y:F

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public distance(FF)F
    .locals 6
    .param p1, "x0"    # F
    .param p2, "y0"    # F

    .prologue
    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    const/high16 v4, -0x40800000    # -1.0f

    iget v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    div-float/2addr v4, v5

    invoke-direct {v1, p1, p2, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;-><init>(FFF)V

    .local v1, "line":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mPointTemp:Landroid/graphics/PointF;

    invoke-virtual {p0, v1, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->crossoverPoint(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;Landroid/graphics/PointF;)Z

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mPointTemp:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v2, v4, p1

    .local v2, "x":F
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mPointTemp:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v3, v4, p2

    .local v3, "y":F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float v0, v4, v5

    .local v0, "length":F
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v1, v0, v2

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v2, v0, v2

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v3, v0, v4

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v4, v0, v4

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getLength()F
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mLength:F

    return v0
.end method

.method public getSlope()F
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    return v0
.end method

.method public hasCrossoverPoint(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;)Z
    .locals 9
    .param p1, "line"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v7, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget v6, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v8, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    sub-float/2addr v7, v8

    div-float v2, v6, v7

    .local v2, "x":F
    iget v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v7, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    iget v8, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v8, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    sub-float/2addr v7, v8

    div-float v3, v6, v7

    .local v3, "y":F
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v6, v6, v5

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v7, v7, v4

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v1, v6, v5

    .local v1, "min":F
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v0, v6, v4

    .local v0, "max":F
    :goto_1
    cmpg-float v6, v2, v1

    if-ltz v6, :cond_0

    cmpl-float v6, v2, v0

    if-gtz v6, :cond_0

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v6, v6, v5

    iget-object v7, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v7, v7, v4

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v1, v6, v5

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v0, v6, v4

    :goto_2
    cmpg-float v6, v3, v1

    if-ltz v6, :cond_0

    cmpl-float v6, v3, v0

    if-gtz v6, :cond_0

    iget-object v6, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v6, v6, v5

    iget-object v7, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v7, v7, v4

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    iget-object v6, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v1, v6, v5

    iget-object v6, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v0, v6, v4

    :goto_3
    cmpg-float v6, v2, v1

    if-ltz v6, :cond_0

    cmpl-float v6, v2, v0

    if-gtz v6, :cond_0

    iget-object v6, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v6, v6, v5

    iget-object v7, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v7, v7, v4

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    iget-object v6, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v1, v6, v5

    iget-object v6, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v0, v6, v4

    :goto_4
    cmpg-float v6, v3, v1

    if-ltz v6, :cond_6

    cmpl-float v6, v3, v0

    if-gtz v6, :cond_6

    :goto_5
    move v5, v4

    goto/16 :goto_0

    .end local v0    # "max":F
    .end local v1    # "min":F
    :cond_2
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v1, v6, v4

    .restart local v1    # "min":F
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v0, v6, v5

    .restart local v0    # "max":F
    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v1, v6, v4

    iget-object v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v0, v6, v5

    goto :goto_2

    :cond_4
    iget-object v6, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v1, v6, v4

    iget-object v6, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v0, v6, v5

    goto :goto_3

    :cond_5
    iget-object v6, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v1, v6, v4

    iget-object v6, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v0, v6, v5

    goto :goto_4

    :cond_6
    move v4, v5

    goto :goto_5
.end method

.method public isSameSide(FFFF)Z
    .locals 5
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F

    .prologue
    const/4 v2, 0x0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v3, v3, v2

    sub-float v0, p1, v3

    .local v0, "temp0":F
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v3, v3, v2

    sub-float v1, p3, v3

    .local v1, "temp1":F
    :goto_0
    mul-float v3, v0, v1

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .end local v0    # "temp0":F
    .end local v1    # "temp1":F
    :cond_1
    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v3, p1

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    add-float v0, v3, v4

    .restart local v0    # "temp0":F
    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v3, p3

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v4, p4

    add-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    add-float v1, v3, v4

    .restart local v1    # "temp1":F
    goto :goto_0
.end method

.method public isSameSide(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 6
    .param p1, "point0"    # Landroid/graphics/PointF;
    .param p2, "point1"    # Landroid/graphics/PointF;

    .prologue
    const/4 v2, 0x0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v4, v4, v2

    sub-float v0, v3, v4

    .local v0, "temp0":F
    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v4, v4, v2

    sub-float v1, v3, v4

    .local v1, "temp1":F
    :goto_0
    mul-float v3, v0, v1

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .end local v0    # "temp0":F
    .end local v1    # "temp1":F
    :cond_1
    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    add-float v0, v3, v4

    .restart local v0    # "temp0":F
    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v4, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    iget v5, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    add-float v1, v3, v4

    .restart local v1    # "temp1":F
    goto :goto_0
.end method

.method public offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FFF)Z
    .locals 12
    .param p1, "line"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .param p2, "distance"    # F
    .param p3, "pointX"    # F
    .param p4, "pointY"    # F

    .prologue
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    cmpl-float v9, v9, v10

    if-nez v9, :cond_2

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    cmpg-float v9, p3, v9

    if-gez v9, :cond_0

    neg-float p2, p2

    :cond_0
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    add-float v4, v9, p2

    .local v4, "x0":F
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v10, 0x0

    aget v7, v9, v10

    .local v7, "y0":F
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    add-float v5, v9, p2

    .local v5, "x1":F
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v10, 0x1

    aget v8, v9, v10

    .local v8, "y1":F
    :cond_1
    :goto_0
    invoke-virtual {p1, v4, v7, v5, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    const/4 v9, 0x1

    .end local v4    # "x0":F
    .end local v5    # "x1":F
    .end local v7    # "y0":F
    .end local v8    # "y1":F
    :goto_1
    return v9

    :cond_2
    iget v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v9, p3

    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float v10, v10, p4

    add-float/2addr v9, v10

    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    add-float v0, v9, v10

    .local v0, "delta0":F
    const/4 v9, 0x0

    cmpl-float v9, v9, v0

    if-nez v9, :cond_3

    invoke-virtual {p1, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;)V

    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    const/high16 v9, -0x40800000    # -1.0f

    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    div-float v2, v9, v10

    .local v2, "slope":F
    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v10, v2, v2

    add-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v9, v10

    div-float v3, p2, v9

    .local v3, "x":F
    mul-float v6, v3, v2

    .local v6, "y":F
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    add-float v4, v3, v9

    .restart local v4    # "x0":F
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    add-float v7, v6, v9

    .restart local v7    # "y0":F
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    add-float v5, v3, v9

    .restart local v5    # "x1":F
    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    add-float v8, v6, v9

    .restart local v8    # "y1":F
    iget v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v9, v4

    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v10, v7

    add-float/2addr v9, v10

    iget v10, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    add-float v1, v9, v10

    .local v1, "delta1":F
    mul-float v9, v0, v1

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mPointTemp:Landroid/graphics/PointF;

    invoke-virtual {p0, v4, v7, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->symmetryPoint(FFLandroid/graphics/PointF;)V

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mPointTemp:Landroid/graphics/PointF;

    iget v4, v9, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mPointTemp:Landroid/graphics/PointF;

    iget v7, v9, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mPointTemp:Landroid/graphics/PointF;

    invoke-virtual {p0, v5, v8, v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->symmetryPoint(FFLandroid/graphics/PointF;)V

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mPointTemp:Landroid/graphics/PointF;

    iget v5, v9, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mPointTemp:Landroid/graphics/PointF;

    iget v8, v9, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method public offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FLandroid/graphics/PointF;)Z
    .locals 2
    .param p1, "line"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;
    .param p2, "distance"    # F
    .param p3, "point"    # Landroid/graphics/PointF;

    .prologue
    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->offset(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;FFF)Z

    move-result v0

    return v0
.end method

.method public set(FFF)V
    .locals 6
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "slope"    # F

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput p3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    const/4 v0, 0x0

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aput p1, v0, v4

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aput p2, v0, v4

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v1, v1, v4

    add-float/2addr v1, v2

    aput v1, v0, v5

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v1, v1, v4

    aput v1, v0, v5

    :goto_0
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v0, v0, v4

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v2, v2, v4

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v0, v0, v5

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v1, v1, v4

    sub-float p1, v0, v1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v0, v0, v5

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v1, v1, v4

    sub-float p2, v0, v1

    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mLength:F

    return-void

    :cond_0
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aput p1, v0, v4

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aput p2, v0, v4

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v1, v1, v4

    aput v1, v0, v5

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v1, v1, v4

    add-float/2addr v1, v2

    aput v1, v0, v5

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aput p1, v0, v4

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aput p2, v0, v4

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v1, v1, v4

    add-float/2addr v1, v2

    aput v1, v0, v5

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v3, v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    goto :goto_0
.end method

.method public set(FFFF)V
    .locals 7
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aput p1, v2, v5

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aput p2, v2, v5

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aput p3, v2, v6

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aput p4, v2, v6

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v3, v3, v6

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    :goto_0
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v2, v2, v5

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v3, v3, v5

    sub-float v0, v2, v3

    .local v0, "x":F
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v3, v3, v5

    sub-float v1, v2, v3

    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mLength:F

    return-void

    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v3, v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v4, v4, v5

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    goto :goto_0
.end method

.method public set(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;)V
    .locals 5
    .param p1, "line"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v0, v0, v2

    iget-object v1, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v1, v1, v2

    iget-object v2, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mX:[F

    aget v2, v2, v4

    iget-object v3, p1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mY:[F

    aget v3, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->set(FFFF)V

    return-void
.end method

.method public symmetryPoint(FFLandroid/graphics/PointF;)V
    .locals 5
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "symPoint"    # Landroid/graphics/PointF;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .local v0, "temp":F
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, p2

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iput v1, p3, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iput v1, p3, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public symmetryPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 5
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "symPoint"    # Landroid/graphics/PointF;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .local v0, "temp":F
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mA:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mB:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Line;->mC:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/PointF;->y:F

    return-void
.end method
