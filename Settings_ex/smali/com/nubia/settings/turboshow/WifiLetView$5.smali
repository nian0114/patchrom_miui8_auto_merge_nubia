.class Lcom/nubia/settings/turboshow/WifiLetView$5;
.super Ljava/lang/Object;
.source "WifiLetView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/settings/turboshow/WifiLetView;->createProgressAnimator([FI)Landroid/animation/ValueAnimator;
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
    .line 292
    iput-object p1, p0, Lcom/nubia/settings/turboshow/WifiLetView$5;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 295
    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView$5;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/nubia/settings/turboshow/WifiLetView;->mSweepAngle:F
    invoke-static {v1, v0}, Lcom/nubia/settings/turboshow/WifiLetView;->access$702(Lcom/nubia/settings/turboshow/WifiLetView;F)F

    .line 296
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView$5;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    iget-object v1, p0, Lcom/nubia/settings/turboshow/WifiLetView$5;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    iget-object v2, p0, Lcom/nubia/settings/turboshow/WifiLetView$5;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    # getter for: Lcom/nubia/settings/turboshow/WifiLetView;->mSweepAngle:F
    invoke-static {v2}, Lcom/nubia/settings/turboshow/WifiLetView;->access$700(Lcom/nubia/settings/turboshow/WifiLetView;)F

    move-result v2

    # invokes: Lcom/nubia/settings/turboshow/WifiLetView;->calculatepercentNum(F)I
    invoke-static {v1, v2}, Lcom/nubia/settings/turboshow/WifiLetView;->access$900(Lcom/nubia/settings/turboshow/WifiLetView;F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/nubia/settings/turboshow/WifiLetView;->mPercentStr:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/nubia/settings/turboshow/WifiLetView;->access$802(Lcom/nubia/settings/turboshow/WifiLetView;Ljava/lang/String;)Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView$5;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    invoke-virtual {v0}, Lcom/nubia/settings/turboshow/WifiLetView;->invalidate()V

    .line 298
    return-void
.end method
