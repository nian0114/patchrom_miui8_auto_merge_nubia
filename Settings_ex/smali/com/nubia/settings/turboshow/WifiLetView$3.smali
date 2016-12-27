.class Lcom/nubia/settings/turboshow/WifiLetView$3;
.super Ljava/lang/Object;
.source "WifiLetView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/settings/turboshow/WifiLetView;->startFlashAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nubia/settings/turboshow/WifiLetView;


# direct methods
.method constructor <init>(Lcom/nubia/settings/turboshow/WifiLetView;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/nubia/settings/turboshow/WifiLetView$3;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 255
    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView$3;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    # setter for: Lcom/nubia/settings/turboshow/WifiLetView;->mFlashAngle:F
    invoke-static {v1, v0}, Lcom/nubia/settings/turboshow/WifiLetView;->access$202(Lcom/nubia/settings/turboshow/WifiLetView;F)F

    .line 256
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView$3;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    # getter for: Lcom/nubia/settings/turboshow/WifiLetView;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/nubia/settings/turboshow/WifiLetView;->access$300(Lcom/nubia/settings/turboshow/WifiLetView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 257
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView$3;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    # getter for: Lcom/nubia/settings/turboshow/WifiLetView;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/nubia/settings/turboshow/WifiLetView;->access$300(Lcom/nubia/settings/turboshow/WifiLetView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView$3;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    # getter for: Lcom/nubia/settings/turboshow/WifiLetView;->mCenter_X:F
    invoke-static {v1}, Lcom/nubia/settings/turboshow/WifiLetView;->access$400(Lcom/nubia/settings/turboshow/WifiLetView;)F

    move-result v1

    iget-object v2, p0, Lcom/nubia/settings/turboshow/WifiLetView$3;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    # getter for: Lcom/nubia/settings/turboshow/WifiLetView;->mCenter_Y:F
    invoke-static {v2}, Lcom/nubia/settings/turboshow/WifiLetView;->access$500(Lcom/nubia/settings/turboshow/WifiLetView;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 258
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView$3;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    # getter for: Lcom/nubia/settings/turboshow/WifiLetView;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/nubia/settings/turboshow/WifiLetView;->access$300(Lcom/nubia/settings/turboshow/WifiLetView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView$3;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    # getter for: Lcom/nubia/settings/turboshow/WifiLetView;->mFlashAngle:F
    invoke-static {v1}, Lcom/nubia/settings/turboshow/WifiLetView;->access$200(Lcom/nubia/settings/turboshow/WifiLetView;)F

    move-result v1

    iget-object v2, p0, Lcom/nubia/settings/turboshow/WifiLetView$3;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    # getter for: Lcom/nubia/settings/turboshow/WifiLetView;->mCenter_X:F
    invoke-static {v2}, Lcom/nubia/settings/turboshow/WifiLetView;->access$400(Lcom/nubia/settings/turboshow/WifiLetView;)F

    move-result v2

    iget-object v3, p0, Lcom/nubia/settings/turboshow/WifiLetView$3;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    # getter for: Lcom/nubia/settings/turboshow/WifiLetView;->mCenter_Y:F
    invoke-static {v3}, Lcom/nubia/settings/turboshow/WifiLetView;->access$500(Lcom/nubia/settings/turboshow/WifiLetView;)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 259
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView$3;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    # getter for: Lcom/nubia/settings/turboshow/WifiLetView;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/nubia/settings/turboshow/WifiLetView;->access$300(Lcom/nubia/settings/turboshow/WifiLetView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView$3;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    # getter for: Lcom/nubia/settings/turboshow/WifiLetView;->mFlashBmp:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/nubia/settings/turboshow/WifiLetView;->access$600(Lcom/nubia/settings/turboshow/WifiLetView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nubia/settings/turboshow/WifiLetView$3;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    # getter for: Lcom/nubia/settings/turboshow/WifiLetView;->mFlashBmp:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/nubia/settings/turboshow/WifiLetView;->access$600(Lcom/nubia/settings/turboshow/WifiLetView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 260
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView$3;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    invoke-virtual {v0}, Lcom/nubia/settings/turboshow/WifiLetView;->invalidate()V

    .line 261
    return-void
.end method
