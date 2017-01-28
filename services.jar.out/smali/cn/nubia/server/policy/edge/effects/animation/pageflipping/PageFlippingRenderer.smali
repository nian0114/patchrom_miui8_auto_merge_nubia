.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;
.super Ljava/lang/Object;
.source "PageFlippingRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final COLOR_DELTA_END:F = 0.7f

.field private static final COLOR_DELTA_START:F = 0.3f

.field private static final COLOR_SCALE_END:F = 0.3f

.field private static final COLOR_SCALE_START:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "PageFlippingController"


# instance fields
.field private mCbb:Ljava/nio/ByteBuffer;

.field private final mContext:Landroid/content/Context;

.field private mDrawContent:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

.field private final mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mIbb:Ljava/nio/ByteBuffer;

.field private mIsDrawFirstFrame:Z

.field private final mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

.field private mProgramBg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

.field private mProgramFg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

.field private mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

.field private mProgramNormal:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

.field private mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

.field private mProgramStagger:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

.field private mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

.field private mSurfaceRotation:I

.field private mSurfaceStateListener:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SurfaceStateListener;

.field private mTextureIdShadow:I

.field private mVbb:Ljava/nio/ByteBuffer;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "viewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/opengl/GLSurfaceView;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSurfaceRotation:I

    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x7

    .local v1, "num":I
    new-array v2, v1, [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    new-instance v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    invoke-direct {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->initBuffer()V

    return-void
.end method

.method private checkModelListTexture()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .local v2, "n":I
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    array-length v3, v5

    .local v3, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->isNeedDraw()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-gtz v2, :cond_2

    const-string v5, "PageFlippingController"

    const-string v6, "PageFlippingRenderer checkModelListTexture null"

    invoke-static {v5, v6}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    const/4 v1, 0x1

    .local v1, "isTextureValid":Z
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_4

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getPage()Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-result-object v4

    .local v4, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getTextureIdFg()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getTextureIdBg()I

    move-result v5

    if-eqz v5, :cond_7

    :cond_3
    const/4 v1, 0x0

    .end local v4    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    :cond_4
    if-eqz v1, :cond_6

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getPage()Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-result-object v4

    .restart local v4    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getTextureIdFg()I

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getTextureIdBg()I

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    const/4 v1, 0x0

    .end local v4    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    :cond_6
    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_2
    if-gt v0, v2, :cond_1

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getPage()Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-result-object v4

    .restart local v4    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    const-string v5, "PageFlippingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PageFlippingRenderer checkModelListTexture i = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; fg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getTextureIdFg()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; bg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getTextureIdBg()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private createShaderProgram()V
    .locals 5

    .prologue
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, "resource":Landroid/content/res/Resources;
    const-string v4, "pageflipping_shader/vertex.glsl"

    invoke-static {v4, v2}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    .local v3, "vertexShader":Ljava/lang/String;
    const-string v4, "pageflipping_shader/frag.glsl"

    invoke-static {v4, v2}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .local v0, "fragShader":Ljava/lang/String;
    invoke-static {v3, v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .local v1, "id":I
    new-instance v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    invoke-direct {v4, v1}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;-><init>(I)V

    iput-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramNormal:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    const-string v4, "pageflipping_shader/vertex_fg_back.glsl"

    invoke-static {v4, v2}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pageflipping_shader/frag_fg_back.glsl"

    invoke-static {v4, v2}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/FgBackShaderProgram;

    invoke-direct {v4, v1}, Lcn/nubia/server/policy/edge/effects/animation/opengl/FgBackShaderProgram;-><init>(I)V

    iput-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    const-string v4, "pageflipping_shader/vertex_bg.glsl"

    invoke-static {v4, v2}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pageflipping_shader/frag_bg.glsl"

    invoke-static {v4, v2}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/BgShaderProgram;

    invoke-direct {v4, v1}, Lcn/nubia/server/policy/edge/effects/animation/opengl/BgShaderProgram;-><init>(I)V

    iput-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramBg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    const-string v4, "pageflipping_shader/vertex_roll.glsl"

    invoke-static {v4, v2}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pageflipping_shader/frag_roll.glsl"

    invoke-static {v4, v2}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/RollShaderProgram;

    invoke-direct {v4, v1}, Lcn/nubia/server/policy/edge/effects/animation/opengl/RollShaderProgram;-><init>(I)V

    iput-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    const-string v4, "pageflipping_shader/vertex_stagger.glsl"

    invoke-static {v4, v2}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pageflipping_shader/frag_stagger.glsl"

    invoke-static {v4, v2}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/StaggerShaderProgram;

    invoke-direct {v4, v1}, Lcn/nubia/server/policy/edge/effects/animation/opengl/StaggerShaderProgram;-><init>(I)V

    iput-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramStagger:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    const-string v4, "pageflipping_shader/vertex_fg.glsl"

    invoke-static {v4, v2}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pageflipping_shader/frag_fg.glsl"

    invoke-static {v4, v2}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v4, Lcn/nubia/server/policy/edge/effects/animation/opengl/FgShaderProgram;

    invoke-direct {v4, v1}, Lcn/nubia/server/policy/edge/effects/animation/opengl/FgShaderProgram;-><init>(I)V

    iput-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    return-void
.end method

.method private createShadowTexture()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "resource":Landroid/content/res/Resources;
    const v2, 0x3020039

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/OpenGLUtil;->addTexture(Landroid/graphics/Bitmap;)I

    move-result v2

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mTextureIdShadow:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private drawBg(I[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;IFF)V
    .locals 15
    .param p1, "num"    # I
    .param p2, "triangle"    # [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    .param p3, "textureId"    # I
    .param p4, "bgDim"    # F
    .param p5, "alpha"    # F

    .prologue
    const/4 v14, 0x0

    .local v14, "n":I
    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    .local v6, "mVertexBuffer":Ljava/nio/FloatBuffer;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v12

    .local v12, "mTexCoorBuffer":Ljava/nio/FloatBuffer;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, p1

    if-ge v13, v0, :cond_3

    const/4 v1, 0x1

    aget-object v2, p2, v13

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->IsValid()Z

    move-result v2

    if-ne v1, v2, :cond_2

    aget-object v1, p2, v13

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getVertex()[F

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    aget-object v1, p2, v13

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getTextureCoor()[F

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v14, v14, 0x1

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    if-lez v14, :cond_0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramBg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramBg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mMVPMatrixHandle:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->getVPMatrix()[F

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramBg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mBgDimHandle:I

    move/from16 v0, p4

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramBg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mAlphaHandle:I

    move/from16 v0, p5

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramBg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramBg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v7, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramBg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramBg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v1, 0xde1

    move/from16 v0, p3

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    mul-int/lit8 v3, v14, 0x3

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto/16 :goto_0
.end method

.method private drawFg(I[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;IFF)V
    .locals 15
    .param p1, "num"    # I
    .param p2, "triangle"    # [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    .param p3, "textureId"    # I
    .param p4, "fgDim"    # F
    .param p5, "alpha"    # F

    .prologue
    const/4 v14, 0x0

    .local v14, "n":I
    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    .local v6, "mVertexBuffer":Ljava/nio/FloatBuffer;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v12

    .local v12, "mTexCoorBuffer":Ljava/nio/FloatBuffer;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, p1

    if-ge v13, v0, :cond_3

    const/4 v1, 0x1

    aget-object v2, p2, v13

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->IsValid()Z

    move-result v2

    if-ne v1, v2, :cond_2

    aget-object v1, p2, v13

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getVertex()[F

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    aget-object v1, p2, v13

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getTextureCoor()[F

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v14, v14, 0x1

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    if-lez v14, :cond_0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mMVPMatrixHandle:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->getVPMatrix()[F

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mFgDimHandle:I

    move/from16 v0, p4

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mAlphaHandle:I

    move/from16 v0, p5

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v7, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFg:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v1, 0xde1

    move/from16 v0, p3

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    mul-int/lit8 v3, v14, 0x3

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto/16 :goto_0
.end method

.method private drawFgBack(I[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;IFF)V
    .locals 19
    .param p1, "num"    # I
    .param p2, "triangle"    # [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    .param p3, "textureId"    # I
    .param p4, "fgDim"    # F
    .param p5, "alpha"    # F

    .prologue
    const/16 v17, 0x0

    .local v17, "n":I
    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    .local v7, "mVertexBuffer":Ljava/nio/FloatBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v13

    .local v13, "mTexCoorBuffer":Ljava/nio/FloatBuffer;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, p1

    if-ge v0, v1, :cond_3

    const/4 v2, 0x1

    aget-object v3, p2, v16

    invoke-virtual {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->IsValid()Z

    move-result v3

    if-ne v2, v3, :cond_2

    aget-object v2, p2, v16

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getVertex()[F

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    aget-object v2, p2, v16

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;->getTextureCoor()[F

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v17, v17, 0x1

    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    if-lez v17, :cond_0

    sget v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->END_ANGLE:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v18, v0

    .local v18, "sinEndAngle":F
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3e99999a    # 0.3f

    move/from16 v0, v18

    invoke-static {v0, v2, v3, v4, v5}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v15

    .local v15, "colorScale":F
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e99999a    # 0.3f

    const v5, 0x3f333333    # 0.7f

    move/from16 v0, v18

    invoke-static {v0, v2, v3, v4, v5}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v14

    .local v14, "colorDelta":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v2, v2, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mId:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v2, v2, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mMVPMatrixHandle:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->getVPMatrix()[F

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v2, v2, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mFgDimHandle:I

    move/from16 v0, p4

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v2, v2, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mAlphaHandle:I

    move/from16 v0, p5

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v2, v2, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mColorScaleHandle:I

    invoke-static {v2, v15}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v2, v2, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mColorDeltaHandle:I

    invoke-static {v2, v14}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v2, v2, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0xc

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v8, v2, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    const/4 v9, 0x2

    const/16 v10, 0x1406

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v2, v2, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramFgBack:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v2, v2, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v2, 0xde1

    move/from16 v0, p3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    mul-int/lit8 v4, v17, 0x3

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto/16 :goto_0
.end method

.method private drawIcon()V
    .locals 6

    .prologue
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mDrawContent:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    iget-object v3, v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;->mIconList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    .local v3, "iconList":[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;
    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v1, v3

    .local v1, "arr$":[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .local v0, "anIconList":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramNormal:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    invoke-virtual {v0, v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->onDrawFrame(Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private drawRoll(I[F[FIFFF)V
    .locals 15
    .param p1, "num"    # I
    .param p2, "vertex"    # [F
    .param p3, "texCoor"    # [F
    .param p4, "textureId"    # I
    .param p5, "radius"    # F
    .param p6, "fgDim"    # F
    .param p7, "alpha"    # F

    .prologue
    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    .local v6, "mVertexBuffer":Ljava/nio/FloatBuffer;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v12

    .local v12, "mTexCoorBuffer":Ljava/nio/FloatBuffer;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mIbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v14

    .local v14, "mIndexBuffer":Ljava/nio/ShortBuffer;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, p1

    if-ge v13, v0, :cond_1

    mul-int/lit8 v1, v13, 0x2

    int-to-short v1, v1

    invoke-virtual {v14, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    mul-int/lit8 v1, v13, 0x2

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    invoke-virtual {v14, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    mul-int/lit8 v1, v13, 0x2

    add-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    invoke-virtual {v14, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    mul-int/lit8 v1, v13, 0x2

    add-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    invoke-virtual {v14, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    mul-int/lit8 v1, v13, 0x2

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    invoke-virtual {v14, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    mul-int/lit8 v1, v13, 0x2

    add-int/lit8 v1, v1, 0x3

    int-to-short v1, v1

    invoke-virtual {v14, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mMVPMatrixHandle:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->getVPMatrix()[F

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mFgDimHandle:I

    move/from16 v0, p6

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mAlphaHandle:I

    move/from16 v0, p7

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mRadiusHandle:I

    move/from16 v0, p5

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mColorScaleStartHandle:I

    const v2, 0x3e4ccccd    # 0.2f

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mColorScaleEndHandle:I

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mColorDeltaStartHandle:I

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mColorDeltaEndHandle:I

    const v2, 0x3f333333    # 0.7f

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v7, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramRoll:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v1, 0xde1

    move/from16 v0, p4

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v1, 0x4

    mul-int/lit8 v2, p1, 0x6

    const/16 v3, 0x1403

    invoke-static {v1, v2, v3, v14}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto/16 :goto_0
.end method

.method private drawShadow(I[F[FIF)V
    .locals 15
    .param p1, "num"    # I
    .param p2, "vertex"    # [F
    .param p3, "texCoor"    # [F
    .param p4, "textureId"    # I
    .param p5, "alpha"    # F

    .prologue
    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    .local v6, "mVertexBuffer":Ljava/nio/FloatBuffer;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v12

    .local v12, "mTexCoorBuffer":Ljava/nio/FloatBuffer;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mIbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v14

    .local v14, "mIndexBuffer":Ljava/nio/ShortBuffer;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, p1

    if-ge v13, v0, :cond_1

    mul-int/lit8 v1, v13, 0x4

    int-to-short v1, v1

    invoke-virtual {v14, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    mul-int/lit8 v1, v13, 0x4

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    invoke-virtual {v14, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    mul-int/lit8 v1, v13, 0x4

    add-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    invoke-virtual {v14, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    mul-int/lit8 v1, v13, 0x4

    add-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    invoke-virtual {v14, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    mul-int/lit8 v1, v13, 0x4

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    invoke-virtual {v14, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    mul-int/lit8 v1, v13, 0x4

    add-int/lit8 v1, v1, 0x3

    int-to-short v1, v1

    invoke-virtual {v14, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramNormal:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramNormal:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mMVPMatrixHandle:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->getVPMatrix()[F

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramNormal:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mAlphaHandle:I

    move/from16 v0, p5

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramNormal:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramNormal:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v7, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramNormal:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mVertexHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramNormal:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    iget v1, v1, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;->mTexCoorHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v1, 0xde1

    move/from16 v0, p4

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 v1, 0x4

    mul-int/lit8 v2, p1, 0x6

    const/16 v3, 0x1403

    invoke-static {v1, v2, v3, v14}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    goto/16 :goto_0
.end method

.method private drawStaggerPage()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mDrawContent:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    iget-object v0, v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;->mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    .local v0, "staggerPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramStagger:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->onDrawFrame(Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;)V

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mTextureIdShadow:I

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mProgramNormal:Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->onDrawFrameShadow(ILcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;)V

    :cond_0
    return-void
.end method

.method private initBuffer()V
    .locals 2

    .prologue
    const/16 v0, 0x558

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mVbb:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mVbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v0, 0x390

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mCbb:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mCbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v0, 0x1c8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mIbb:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mIbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private onDrawFrameEx()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .local v2, "n":I
    iget-boolean v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mIsDrawFirstFrame:Z

    if-nez v4, :cond_0

    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mIsDrawFirstFrame:Z

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSurfaceStateListener:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SurfaceStateListener;

    invoke-interface {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SurfaceStateListener;->onDrawFirstFrame()V

    :cond_0
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    array-length v3, v4

    .local v3, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->isNeedDraw()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->drawStaggerPage()V

    if-gt v2, v1, :cond_3

    .local v1, "isDrawShadow":Z
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_4

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->isNeedDraw()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v4, v4, v0

    invoke-direct {p0, v4, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->onDrawFrameItem(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1    # "isDrawShadow":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .restart local v1    # "isDrawShadow":Z
    :cond_4
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->drawIcon()V

    return-void
.end method

.method private onDrawFrameItem(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;Z)V
    .locals 26
    .param p1, "model"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;
    .param p2, "isDrawShadow"    # Z

    .prologue
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getPage()Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-result-object v25

    .local v25, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-virtual/range {v25 .. v25}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getTextureIdFg()I

    move-result v4

    .local v4, "textureIdFg":I
    invoke-virtual/range {v25 .. v25}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getTextureIdBg()I

    move-result v16

    .local v16, "textureIdBg":I
    invoke-virtual/range {v25 .. v25}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getFgDim()F

    move-result v5

    .local v5, "fgDim":F
    invoke-virtual/range {v25 .. v25}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getBgDim()F

    move-result v17

    .local v17, "bgDim":F
    invoke-virtual/range {v25 .. v25}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getFgAlpha()F

    move-result v6

    .local v6, "fgAlpha":F
    invoke-virtual/range {v25 .. v25}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->getBgAlpha()F

    move-result v18

    .local v18, "bgAlpha":F
    if-nez v4, :cond_1

    if-nez v16, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->needDrawFgBack()Z

    move-result v7

    if-ne v1, v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTriangleFgBack()[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    move-result-object v3

    .local v3, "triangle":[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTriangleNumFgBack()I

    move-result v2

    .local v2, "num":I
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->drawFgBack(I[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;IFF)V

    .end local v2    # "num":I
    .end local v3    # "triangle":[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    :cond_2
    const/4 v1, 0x1

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->needDrawRoll()Z

    move-result v7

    if-ne v1, v7, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getRollVertex()[F

    move-result-object v9

    .local v9, "vertex":[F
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getRollTexCoor()[F

    move-result-object v10

    .local v10, "texCoor":[F
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getRollNum()I

    move-result v2

    .restart local v2    # "num":I
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getRollRadius()F

    move-result v12

    .local v12, "radius":F
    move-object/from16 v7, p0

    move v8, v2

    move v11, v4

    move v13, v5

    move v14, v6

    invoke-direct/range {v7 .. v14}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->drawRoll(I[F[FIFFF)V

    .end local v2    # "num":I
    .end local v9    # "vertex":[F
    .end local v10    # "texCoor":[F
    .end local v12    # "radius":F
    :cond_3
    const/4 v1, 0x1

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->needDrawBg()Z

    move-result v7

    if-ne v1, v7, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTriangleBg()[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    move-result-object v3

    .restart local v3    # "triangle":[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTriangleNumBg()I

    move-result v2

    .restart local v2    # "num":I
    move-object/from16 v13, p0

    move v14, v2

    move-object v15, v3

    invoke-direct/range {v13 .. v18}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->drawBg(I[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;IFF)V

    .end local v2    # "num":I
    .end local v3    # "triangle":[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    :cond_4
    const/4 v1, 0x1

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->needDrawFg()Z

    move-result v7

    if-ne v1, v7, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTriangleFg()[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;

    move-result-object v3

    .restart local v3    # "triangle":[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getTriangleNumFg()I

    move-result v2

    .restart local v2    # "num":I
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->drawFg(I[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;IFF)V

    .end local v2    # "num":I
    .end local v3    # "triangle":[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Triangle;
    :cond_5
    const/4 v1, 0x1

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->needDrawShadowPage()Z

    move-result v7

    if-ne v1, v7, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getShadowPageVertex()[F

    move-result-object v9

    .restart local v9    # "vertex":[F
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getShadowPageTexCoor()[F

    move-result-object v10

    .restart local v10    # "texCoor":[F
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getShadowPageNum()I

    move-result v2

    .restart local v2    # "num":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mTextureIdShadow:I

    move/from16 v23, v0

    move-object/from16 v19, p0

    move/from16 v20, v2

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move/from16 v24, v6

    invoke-direct/range {v19 .. v24}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->drawShadow(I[F[FIF)V

    .end local v2    # "num":I
    .end local v9    # "vertex":[F
    .end local v10    # "texCoor":[F
    :cond_6
    const/4 v1, 0x1

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->needDrawShadowRoll()Z

    move-result v7

    if-ne v1, v7, :cond_0

    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v1, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getShadowRollVertex()[F

    move-result-object v9

    .restart local v9    # "vertex":[F
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getShadowRollTexCoor()[F

    move-result-object v10

    .restart local v10    # "texCoor":[F
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->getShadowRollNum()I

    move-result v2

    .restart local v2    # "num":I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mTextureIdShadow:I

    move/from16 v23, v0

    move-object/from16 v19, p0

    move/from16 v20, v2

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move/from16 v24, v18

    invoke-direct/range {v19 .. v24}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->drawShadow(I[F[FIF)V

    goto/16 :goto_0
.end method

.method private onProcessIcon([Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;)V
    .locals 7
    .param p1, "iconList"    # [Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v1, p1

    .local v1, "arr$":[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .local v0, "anIconList":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;
    if-eqz v0, :cond_2

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSurfaceRotation:I

    iget v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mWidth:I

    iget v6, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mHeight:I

    invoke-virtual {v0, v4, v5, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;->onProcess(III)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private onProcessPageTurning(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pageList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    const/4 v2, 0x7

    .local v2, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    .local v3, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    if-lt v0, v2, :cond_1

    .end local v3    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    :cond_0
    :goto_1
    if-ge v0, v2, :cond_2

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->setNeedDraw(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .restart local v3    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    :cond_1
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v4, v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->setNeedDraw(Z)V

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v4, v4, v0

    iget v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSurfaceRotation:I

    invoke-virtual {v4, v3, v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->onProcessPageTurning(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    :cond_2
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v4}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method private onProcessStaggerPage(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;)V
    .locals 2
    .param p1, "staggerPage"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mHeight:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->onProcess(FF)V

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mHeight:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;->onProcessShadow(FF)V

    return-void
.end method

.method private resetModelList()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    array-length v1, v2

    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->setNeedDraw(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setCamera(II)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v6, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v5, 0x0

    int-to-float v3, p1

    div-float v0, v3, v4

    .local v0, "x":F
    int-to-float v3, p2

    div-float v1, v3, v4

    .local v1, "y":F
    invoke-static {v6, v6, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    move v3, v0

    move v4, v1

    move v6, v5

    move v7, v2

    move v8, v5

    invoke-static/range {v0 .. v8}, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->gluLookAt(FFFFFFFFF)V

    neg-float v2, v0

    neg-float v4, v1

    const/high16 v6, -0x3bea0000    # -600.0f

    const/high16 v7, 0x44160000    # 600.0f

    move v3, v0

    move v5, v1

    invoke-static/range {v2 .. v7}, Lcn/nubia/server/policy/edge/effects/animation/opengl/MatrixState;->glOrtho(FFFFFF)V

    return-void
.end method


# virtual methods
.method public createPageTexture(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcn/nubia/server/policy/edge/effects/animation/opengl/OpenGLUtil;->addTexture(Landroid/graphics/Bitmap;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createPageTextures(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "textureIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/OpenGLUtil;->addTexture(Landroid/graphics/Bitmap;)I

    move-result v2

    .local v2, "textureId":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v2    # "textureId":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public createPageTextures([I[Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "textureIds"    # [I
    .param p2, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget-object v1, p2, v0

    if-eqz v1, :cond_0

    aget-object v1, p2, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p2, v0

    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/animation/opengl/OpenGLUtil;->addTexture(Landroid/graphics/Bitmap;)I

    move-result v1

    aput v1, p1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aput v1, p1, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public deleteTexture(I)V
    .locals 2
    .param p1, "textureId"    # I

    .prologue
    const/4 v1, 0x1

    new-array v0, v1, [I

    .local v0, "textureIds":[I
    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/opengl/OpenGLUtil;->delTextures([I)V

    return-void
.end method

.method public deleteTextures(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "textureIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lcn/nubia/server/policy/edge/effects/animation/opengl/OpenGLUtil;->delTextures(Ljava/util/List;)V

    return-void
.end method

.method public deleteTextures([I)V
    .locals 0
    .param p1, "textureIds"    # [I

    .prologue
    invoke-static {p1}, Lcn/nubia/server/policy/edge/effects/animation/opengl/OpenGLUtil;->delTextures([I)V

    return-void
.end method

.method public getSurfaceHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mHeight:I

    return v0
.end method

.method public getSurfaceRotation()I
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSurfaceRotation:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mWidth:I

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/16 v1, 0x4100

    :try_start_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    const/4 v1, 0x1

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->checkModelListTexture()Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->onDrawFrameEx()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->reportException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onProcess(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;)V
    .locals 4
    .param p1, "drawContent"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mDrawContent:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mDrawContent:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    iget-object v0, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;->mIconList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;

    .local v0, "iconList":[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;
    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->onProcessIcon([Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;)V

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mDrawContent:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    iget-object v1, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;->mPageList:Ljava/util/List;

    .local v1, "pageList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;>;"
    invoke-direct {p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->onProcessPageTurning(Ljava/util/List;)V

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mDrawContent:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    iget-object v2, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;->mStaggerPage:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;

    .local v2, "staggerPage":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;
    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->onProcessStaggerPage(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;)V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const-string v2, "PageFlippingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PageFlippingRenderer onSurfaceChanged width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSurfaceRotation:I

    invoke-virtual {p0, p2, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->setSize(II)V

    invoke-direct {p0, p2, p3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->setCamera(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "windowManager":Landroid/view/WindowManager;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    invoke-virtual {v2, v0}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->reportException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const-string v1, "PageFlippingController"

    const-string v2, "PageFlippingRenderer onSurfaceCreated"

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->resetModelList()V

    const/16 v1, 0xbd0

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->createShaderProgram()V

    invoke-direct {p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->createShadowTexture()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mIsDrawFirstFrame:Z

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSurfaceStateListener:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SurfaceStateListener;

    invoke-interface {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SurfaceStateListener;->onSurfaceCreated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->reportException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V
    .locals 0
    .param p1, "safeGuarder"    # Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    return-void
.end method

.method public setSize(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mWidth:I

    if-ne p1, v2, :cond_1

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mHeight:I

    if-ne p2, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mWidth:I

    iput p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mHeight:I

    const/4 v1, 0x7

    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mModelList:[Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;

    aget-object v2, v2, v0

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mWidth:I

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mHeight:I

    invoke-virtual {v2, v3, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingModel;->setSize(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setSurfaceListener(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SurfaceStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SurfaceStateListener;

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->mSurfaceStateListener:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SurfaceStateListener;

    return-void
.end method
