.class public Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;
.super Ljava/lang/Object;
.source "ShaderProgram.java"


# instance fields
.field public final mAlphaHandle:I

.field public mBgDimHandle:I

.field public mColorDeltaEndHandle:I

.field public mColorDeltaHandle:I

.field public mColorDeltaStartHandle:I

.field public mColorScaleEndHandle:I

.field public mColorScaleHandle:I

.field public mColorScaleStartHandle:I

.field public mFgDimHandle:I

.field public final mId:I

.field public final mMVPMatrixHandle:I

.field public mRadiusHandle:I

.field public final mTexCoorHandle:I

.field public final mVertexHandle:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "program"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mId:I

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mId:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mMVPMatrixHandle:I

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mId:I

    const-string v1, "aVertex"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mId:I

    const-string v1, "aTexCoor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mId:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mAlphaHandle:I

    return-void
.end method
