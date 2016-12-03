.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;
.super Ljava/lang/Object;
.source "Icon.java"


# static fields
.field private static final DIST_ICON:I = 0x3c

.field private static final OFFSET_ICON:I = 0xb4

.field private static final SIZE_ICON:I = 0x96

.field private static final TRIANGLE_ICON:I = 0x2


# instance fields
.field private mAlpha:F

.field private mCbb:Ljava/nio/ByteBuffer;

.field private mFactor:F

.field private final mIsLeft:Z

.field private final mIsUpIcon:Z

.field private mScreenHeight:I

.field private mTextureId:I

.field private mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

.field private mVbb:Ljava/nio/ByteBuffer;

.field private final mY:F


# direct methods
.method public constructor <init>(FZZ)V
    .locals 0
    .param p1, "y"    # F
    .param p2, "isLeft"    # Z
    .param p3, "isUpIcon"    # Z

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mY:F

    .line 31
    iput-boolean p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mIsLeft:Z

    .line 32
    iput-boolean p3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mIsUpIcon:Z

    .line 33
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->init()V

    .line 34
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 37
    const/16 v1, 0x48

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mVbb:Ljava/nio/ByteBuffer;

    .line 38
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mVbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 39
    const/16 v1, 0x30

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mCbb:Ljava/nio/ByteBuffer;

    .line 40
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mCbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 41
    new-array v1, v3, [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 44
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    invoke-direct {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;-><init>()V

    aput-object v2, v1, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method private isNeedDraw()Z
    .locals 2

    .prologue
    .line 155
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mIsUpIcon:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mY:F

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mScreenHeight:I

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mIsUpIcon:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mY:F

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mScreenHeight:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onDrawFrame(Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;)V
    .locals 14
    .param p1, "shaderProgram"    # Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    .prologue
    .line 102
    const/4 v13, 0x0

    .line 106
    .local v13, "n":I
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->isNeedDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTextureId:I

    if-nez v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 112
    .local v5, "mVertexBuffer":Ljava/nio/FloatBuffer;
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v11

    .line 114
    .local v11, "mTexCoorBuffer":Ljava/nio/FloatBuffer;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    const/4 v0, 0x2

    if-ge v12, v0, :cond_3

    .line 115
    const/4 v0, 0x1

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->IsValid()Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 116
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getVertex()[F

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 117
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getTextureCoor()[F

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 118
    add-int/lit8 v13, v13, 0x1

    .line 114
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 121
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 122
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 124
    if-lez v13, :cond_0

    .line 128
    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 129
    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mMVPMatrixHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->getVPMatrix()[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 131
    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mAlphaHandle:I

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mAlpha:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 132
    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 134
    iget v6, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0x8

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 136
    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 137
    iget v0, p1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 138
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 139
    const/16 v0, 0xde1

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTextureId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 140
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 141
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 142
    const/4 v0, 0x4

    const/4 v1, 0x0

    mul-int/lit8 v2, v13, 0x3

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 143
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    goto/16 :goto_0
.end method

.method public onProcess(III)V
    .locals 30
    .param p1, "rotation"    # I
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I

    .prologue
    .line 49
    const/16 v28, 0x0

    .line 56
    .local v28, "i":I
    const/high16 v5, -0x3c600000    # -320.0f

    .line 57
    .local v5, "z":F
    const/high16 v2, 0x43340000    # 180.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mFactor:F

    mul-float v29, v2, v8

    .line 59
    .local v29, "offsetY":F
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mScreenHeight:I

    .line 61
    invoke-direct/range {p0 .. p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->isNeedDraw()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTextureId:I

    if-nez v2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mIsLeft:Z

    if-eqz v2, :cond_2

    .line 66
    const/high16 v3, 0x42700000    # 60.0f

    .line 71
    .local v3, "x0":F
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mIsUpIcon:Z

    if-eqz v2, :cond_3

    .line 72
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mY:F

    const/high16 v8, 0x43160000    # 150.0f

    sub-float/2addr v2, v8

    add-float v4, v2, v29

    .line 77
    .local v4, "y0":F
    :goto_2
    move v6, v3

    .line 78
    .local v6, "x1":F
    const/high16 v2, 0x43160000    # 150.0f

    add-float v7, v4, v2

    .line 79
    .local v7, "y1":F
    const/high16 v2, 0x43160000    # 150.0f

    add-float v9, v3, v2

    .line 80
    .local v9, "x2":F
    move v10, v4

    .line 81
    .local v10, "y2":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v2, v2, v28

    move v8, v5

    move v11, v5

    invoke-virtual/range {v2 .. v11}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    .line 82
    const/4 v12, 0x0

    .line 83
    .local v12, "x0Ex":F
    const/4 v13, 0x0

    .line 84
    .local v13, "y0Ex":F
    const/4 v14, 0x0

    .line 85
    .local v14, "x1Ex":F
    const/high16 v15, 0x3f800000    # 1.0f

    .line 86
    .local v15, "y1Ex":F
    const/high16 v16, 0x3f800000    # 1.0f

    .line 87
    .local v16, "x2Ex":F
    const/16 v17, 0x0

    .line 88
    .local v17, "y2Ex":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v11, v2, v28

    move/from16 v18, p1

    invoke-virtual/range {v11 .. v18}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v2, v2, v28

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    .line 91
    add-int/lit8 v28, v28, 0x1

    .line 92
    const/high16 v2, 0x43160000    # 150.0f

    add-float/2addr v3, v2

    .line 93
    const/high16 v2, 0x43160000    # 150.0f

    add-float/2addr v4, v2

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v18, v2, v28

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v5

    invoke-virtual/range {v18 .. v27}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setVertex(FFFFFFFFF)V

    .line 95
    const/high16 v12, 0x3f800000    # 1.0f

    .line 96
    const/high16 v13, 0x3f800000    # 1.0f

    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v18, v2, v28

    move/from16 v19, v12

    move/from16 v20, v13

    move/from16 v21, v16

    move/from16 v22, v17

    move/from16 v23, v14

    move/from16 v24, v15

    move/from16 v25, p1

    invoke-virtual/range {v18 .. v25}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setTextureCoor(FFFFFFI)V

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTriangleIcon:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    aget-object v2, v2, v28

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->setIsValid(Z)V

    goto/16 :goto_0

    .line 68
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v6    # "x1":F
    .end local v7    # "y1":F
    .end local v9    # "x2":F
    .end local v10    # "y2":F
    .end local v12    # "x0Ex":F
    .end local v13    # "y0Ex":F
    .end local v14    # "x1Ex":F
    .end local v15    # "y1Ex":F
    .end local v16    # "x2Ex":F
    .end local v17    # "y2Ex":F
    :cond_2
    move/from16 v0, p2

    add-int/lit16 v2, v0, -0x96

    add-int/lit8 v2, v2, -0x3c

    int-to-float v3, v2

    .restart local v3    # "x0":F
    goto/16 :goto_1

    .line 74
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mY:F

    add-float v4, v2, v29

    .restart local v4    # "y0":F
    goto/16 :goto_2
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 151
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mAlpha:F

    .line 152
    return-void
.end method

.method public setFactor(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    .line 147
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mFactor:F

    .line 148
    return-void
.end method

.method public setTextureId(I)V
    .locals 0
    .param p1, "textureId"    # I

    .prologue
    .line 160
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->mTextureId:I

    .line 161
    return-void
.end method
