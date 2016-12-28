.class public Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;
.super Lcn/nubia/edgegesture/EdgeGesture;
.source "EffectsEdgeGesture.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/edgegesture/EdgeGesture;-><init>(IIIFF)V

    return-void
.end method

.method public constructor <init>(IIIFF)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "action"    # I
    .param p3, "id"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    invoke-direct/range {p0 .. p5}, Lcn/nubia/edgegesture/EdgeGesture;-><init>(IIIFF)V

    return-void
.end method

.method public static convertFrom(Lcn/nubia/edgegesture/EdgeGesture;)Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;
    .locals 8
    .param p0, "gesture"    # Lcn/nubia/edgegesture/EdgeGesture;

    .prologue
    new-instance v1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    invoke-direct {v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;-><init>()V

    .local v1, "localGesture":Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;
    iget v3, p0, Lcn/nubia/edgegesture/EdgeGesture;->mType:I

    iput v3, v1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mType:I

    iget v3, p0, Lcn/nubia/edgegesture/EdgeGesture;->mAction:I

    iput v3, v1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    iget v3, p0, Lcn/nubia/edgegesture/EdgeGesture;->mPointerCount:I

    iput v3, v1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mPointerCount:I

    iget v2, p0, Lcn/nubia/edgegesture/EdgeGesture;->mPointerCount:I

    .local v2, "pointCount":I
    new-array v3, v2, [Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    iput-object v3, v1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, v1, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    new-instance v4, Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    iget-object v5, p0, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->id:I

    iget-object v6, p0, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v6, v6, v0

    iget v6, v6, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->x:F

    iget-object v7, p0, Lcn/nubia/edgegesture/EdgeGesture;->mPointers:[Lcn/nubia/edgegesture/EdgeGesture$Pointer;

    aget-object v7, v7, v0

    iget v7, v7, Lcn/nubia/edgegesture/EdgeGesture$Pointer;->y:F

    invoke-direct {v4, v5, v6, v7}, Lcn/nubia/edgegesture/EdgeGesture$Pointer;-><init>(IFF)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Gesture$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lcn/nubia/edgegesture/EdgeGesture;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method
