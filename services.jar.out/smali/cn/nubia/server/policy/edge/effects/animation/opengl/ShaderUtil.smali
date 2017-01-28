.class public Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;
.super Ljava/lang/Object;
.source "ShaderUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShaderUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_0

    const-string v1, "ShaderUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "vertexSource"    # Ljava/lang/String;
    .param p1, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const v5, 0x8b31

    invoke-static {v5, p0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadShader(ILjava/lang/String;)I

    move-result v3

    .local v3, "vertexShader":I
    if-nez v3, :cond_1

    move v2, v4

    :cond_0
    :goto_0
    return v2

    :cond_1
    const v5, 0x8b30

    invoke-static {v5, p1}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadShader(ILjava/lang/String;)I

    move-result v0

    .local v0, "fragShader":I
    if-nez v0, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .local v2, "program":I
    if-eqz v2, :cond_0

    new-array v1, v6, [I

    .local v1, "linkStatus":[I
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const v5, 0x8b82

    invoke-static {v2, v5, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v4, v1, v4

    if-eq v4, v6, :cond_0

    const-string v4, "ShaderUtil"

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "ShaderUtil"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 9
    .param p0, "fname"    # Ljava/lang/String;
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    const/4 v5, 0x0

    .local v5, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .local v4, "in":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v2

    .local v2, "ch":I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_0

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "ch":I
    .end local v4    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v5

    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "ch":I
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .local v1, "buff":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v5    # "result":Ljava/lang/String;
    .local v6, "result":Ljava/lang/String;
    :try_start_2
    const-string v7, "\\r\\n"

    const-string v8, "\n"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_2

    .end local v5    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_1
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 5
    .param p0, "shaderType"    # I
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .local v1, "shader":I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    new-array v0, v2, [I

    .local v0, "compiled":[I
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v2, v0, v3

    if-nez v2, :cond_0

    const-string v2, "ShaderUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ShaderUtil"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v1, 0x0

    .end local v0    # "compiled":[I
    :cond_0
    return v1
.end method
