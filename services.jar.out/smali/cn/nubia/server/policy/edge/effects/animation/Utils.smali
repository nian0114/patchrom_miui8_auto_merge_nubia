.class public Lcn/nubia/server/policy/edge/effects/animation/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLinearValue(FFFFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F
    .param p3, "startResult"    # F
    .param p4, "endResult"    # F

    .prologue
    cmpg-float v0, p1, p2

    if-gez v0, :cond_2

    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    .end local p3    # "startResult":F
    :cond_0
    :goto_0
    return p3

    .restart local p3    # "startResult":F
    :cond_1
    cmpl-float v0, p0, p2

    if-lez v0, :cond_3

    move p3, p4

    goto :goto_0

    :cond_2
    cmpl-float v0, p0, p1

    if-gtz v0, :cond_0

    cmpg-float v0, p0, p2

    if-gez v0, :cond_3

    move p3, p4

    goto :goto_0

    :cond_3
    sub-float/2addr p0, p1

    sub-float v0, p2, p1

    div-float/2addr p0, v0

    sub-float v0, p4, p3

    mul-float/2addr v0, p0

    add-float/2addr p3, v0

    goto :goto_0
.end method

.method public static getLinearValueEx(FFFFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F
    .param p3, "startResult"    # F
    .param p4, "endResult"    # F

    .prologue
    sub-float/2addr p0, p1

    sub-float v0, p2, p1

    div-float/2addr p0, v0

    sub-float v0, p4, p3

    mul-float/2addr v0, p0

    add-float/2addr v0, p3

    return v0
.end method

.method public static sort([FIZ)V
    .locals 5
    .param p0, "array"    # [F
    .param p1, "num"    # I
    .param p2, "isBigFirst"    # Z

    .prologue
    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_5

    move v1, v0

    .local v1, "j":I
    :goto_1
    if-ge v1, p1, :cond_1

    aget v3, p0, v0

    aget v4, p0, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    aget v2, p0, v0

    .local v2, "tmp":F
    aget v3, p0, v1

    aput v3, p0, v0

    aput v2, p0, v1

    .end local v2    # "tmp":F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, p1, :cond_5

    move v1, v0

    .restart local v1    # "j":I
    :goto_3
    if-ge v1, p1, :cond_4

    aget v3, p0, v0

    aget v4, p0, v1

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    aget v2, p0, v0

    .restart local v2    # "tmp":F
    aget v3, p0, v1

    aput v3, p0, v0

    aput v2, p0, v1

    .end local v2    # "tmp":F
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1    # "j":I
    :cond_5
    return-void
.end method
