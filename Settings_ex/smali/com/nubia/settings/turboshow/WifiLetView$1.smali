.class Lcom/nubia/settings/turboshow/WifiLetView$1;
.super Ljava/lang/Object;
.source "WifiLetView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/settings/turboshow/WifiLetView;->startOnAnim()V
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
    .line 174
    iput-object p1, p0, Lcom/nubia/settings/turboshow/WifiLetView$1;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 177
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 178
    .local v0, "value":F
    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView$1;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    # getter for: Lcom/nubia/settings/turboshow/WifiLetView;->mNormalLightPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/nubia/settings/turboshow/WifiLetView;->access$000(Lcom/nubia/settings/turboshow/WifiLetView;)Landroid/graphics/Paint;

    move-result-object v1

    mul-float v2, v3, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 179
    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView$1;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    # getter for: Lcom/nubia/settings/turboshow/WifiLetView;->mOverLightPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/nubia/settings/turboshow/WifiLetView;->access$100(Lcom/nubia/settings/turboshow/WifiLetView;)Landroid/graphics/Paint;

    move-result-object v1

    mul-float v2, v3, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 180
    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView$1;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    invoke-virtual {v1}, Lcom/nubia/settings/turboshow/WifiLetView;->invalidate()V

    .line 181
    return-void
.end method
