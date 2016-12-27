.class Lcom/nubia/settings/turboshow/WifiLetView$4;
.super Ljava/lang/Object;
.source "WifiLetView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/settings/turboshow/WifiLetView;->createAlphaAnimator(Landroid/graphics/Paint;[FI)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nubia/settings/turboshow/WifiLetView;

.field final synthetic val$paint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Lcom/nubia/settings/turboshow/WifiLetView;Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/nubia/settings/turboshow/WifiLetView$4;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    iput-object p2, p0, Lcom/nubia/settings/turboshow/WifiLetView$4;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 281
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 282
    .local v0, "value":F
    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView$4;->val$paint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 283
    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView$4;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    invoke-virtual {v1}, Lcom/nubia/settings/turboshow/WifiLetView;->invalidate()V

    .line 284
    return-void
.end method
