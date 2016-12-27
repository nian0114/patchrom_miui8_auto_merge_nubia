.class public Lcom/android/settings_ex/widget/AppRunningPieChart;
.super Landroid/view/View;
.source "AppRunningPieChart.java"


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/widget/AppRunningPieEntity;",
            ">;"
        }
    .end annotation
.end field

.field mColorsDarkenId:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/widget/AppRunningPieChart;->mColorsDarkenId:[I

    .line 27
    return-void

    .line 55
    :array_0
    .array-data 4
        0x7f0e0064
        0x7f0e0060
        0x7f0e0062
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/widget/AppRunningPieChart;->mColorsDarkenId:[I

    .line 35
    return-void

    .line 55
    :array_0
    .array-data 4
        0x7f0e0064
        0x7f0e0060
        0x7f0e0062
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/widget/AppRunningPieChart;->mColorsDarkenId:[I

    .line 31
    return-void

    .line 55
    :array_0
    .array-data 4
        0x7f0e0064
        0x7f0e0060
        0x7f0e0062
    .end array-data
.end method


# virtual methods
.method protected drawData(Landroid/graphics/Canvas;Landroid/graphics/Point;I)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "position"    # Landroid/graphics/Point;
    .param p3, "radiusLength"    # I

    .prologue
    .line 61
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/widget/AppRunningPieChart;->data:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 63
    const/4 v15, 0x0

    .line 64
    .local v15, "sum":F
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/widget/AppRunningPieChart;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_0

    .line 65
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/widget/AppRunningPieChart;->data:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/widget/AppRunningPieEntity;

    iget v2, v2, Lcom/android/settings_ex/widget/AppRunningPieEntity;->value:F

    add-float/2addr v15, v2

    .line 64
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 68
    :cond_0
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 69
    .local v12, "mPaintFill":Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    new-instance v14, Landroid/graphics/RectF;

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Point;->x:I

    sub-int v2, v2, p3

    int-to-float v2, v2

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Point;->y:I

    sub-int v3, v3, p3

    int-to-float v3, v3

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Point;->x:I

    add-int v4, v4, p3

    int-to-float v4, v4

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Point;->y:I

    add-int v6, v6, p3

    int-to-float v6, v6

    invoke-direct {v14, v2, v3, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 74
    .local v14, "oval":Landroid/graphics/RectF;
    const/high16 v13, -0x3d4c0000    # -90.0f

    .line 76
    .local v13, "offset":F
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/widget/AppRunningPieChart;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_1

    .line 77
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/widget/AppRunningPieChart;->data:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/widget/AppRunningPieEntity;

    .line 81
    .local v9, "e":Lcom/android/settings_ex/widget/AppRunningPieEntity;
    iget v2, v9, Lcom/android/settings_ex/widget/AppRunningPieEntity;->color:I

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    new-instance v1, Landroid/graphics/LinearGradient;

    move/from16 v0, p3

    int-to-float v2, v0

    const/4 v3, 0x0

    move/from16 v0, p3

    int-to-float v4, v0

    mul-int/lit8 v6, p3, 0x2

    int-to-float v5, v6

    iget v6, v9, Lcom/android/settings_ex/widget/AppRunningPieEntity;->color:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/AppRunningPieChart;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/widget/AppRunningPieChart;->mColorsDarkenId:[I

    aget v8, v8, v11

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 85
    .local v1, "mLinearGradient":Landroid/graphics/LinearGradient;
    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 86
    iget v2, v9, Lcom/android/settings_ex/widget/AppRunningPieEntity;->value:F

    neg-float v2, v2

    div-float/2addr v2, v15

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v5, v2, v3

    .line 90
    .local v5, "sweep":F
    const/4 v6, 0x1

    move-object/from16 v2, p1

    move-object v3, v14

    move v4, v13

    move-object v7, v12

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 91
    add-float/2addr v13, v5

    .line 76
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 95
    .end local v1    # "mLinearGradient":Landroid/graphics/LinearGradient;
    .end local v5    # "sweep":F
    .end local v9    # "e":Lcom/android/settings_ex/widget/AppRunningPieEntity;
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v12    # "mPaintFill":Landroid/graphics/Paint;
    .end local v13    # "offset":F
    .end local v14    # "oval":Landroid/graphics/RectF;
    .end local v15    # "sum":F
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 39
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 42
    invoke-super {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-super {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_0

    invoke-super {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 46
    .local v2, "rect":I
    :goto_0
    int-to-float v3, v2

    div-float/2addr v3, v8

    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 49
    .local v1, "radiusLength":I
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/AppRunningPieChart;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/AppRunningPieChart;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 52
    .local v0, "position":Landroid/graphics/Point;
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings_ex/widget/AppRunningPieChart;->drawData(Landroid/graphics/Canvas;Landroid/graphics/Point;I)V

    .line 53
    return-void

    .line 42
    .end local v0    # "position":Landroid/graphics/Point;
    .end local v1    # "radiusLength":I
    .end local v2    # "rect":I
    :cond_0
    invoke-super {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/widget/AppRunningPieEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/widget/AppRunningPieEntity;>;"
    iput-object p1, p0, Lcom/android/settings_ex/widget/AppRunningPieChart;->data:Ljava/util/List;

    .line 99
    return-void
.end method
