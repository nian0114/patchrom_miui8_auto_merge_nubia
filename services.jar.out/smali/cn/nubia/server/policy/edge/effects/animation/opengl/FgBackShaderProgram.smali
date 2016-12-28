.class public Lcn/nubia/server/policy/edge/effects/animation/opengl/FgBackShaderProgram;
.super Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;
.source "FgBackShaderProgram.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "program"    # I

    .prologue
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;-><init>(I)V

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/FgBackShaderProgram;->mId:I

    const-string v1, "uColorScale"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/FgBackShaderProgram;->mColorScaleHandle:I

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/FgBackShaderProgram;->mId:I

    const-string v1, "uColorDelta"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/FgBackShaderProgram;->mColorDeltaHandle:I

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/FgBackShaderProgram;->mId:I

    const-string v1, "uFgDim"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/FgBackShaderProgram;->mFgDimHandle:I

    return-void
.end method
