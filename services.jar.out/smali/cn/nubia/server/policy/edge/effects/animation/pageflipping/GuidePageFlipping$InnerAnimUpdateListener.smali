.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$InnerAnimUpdateListener;
.super Ljava/lang/Object;
.source "GuidePageFlipping.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerAnimUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;


# direct methods
.method private constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$InnerAnimUpdateListener;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;
    .param p2, "x1"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$1;

    .prologue
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$InnerAnimUpdateListener;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .local v0, "time":F
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$InnerAnimUpdateListener;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;

    # getter for: Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;
    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;->access$400(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    move-result-object v1

    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$InnerAnimUpdateListener$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$InnerAnimUpdateListener$1;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuidePageFlipping$InnerAnimUpdateListener;F)V

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->postRunable(Ljava/lang/Runnable;)V

    return-void
.end method
