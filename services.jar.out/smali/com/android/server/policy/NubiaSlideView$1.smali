.class Lcom/android/server/policy/NubiaSlideView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NubiaSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/NubiaSlideView;->startEnterIntoAnimator(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/NubiaSlideView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/NubiaSlideView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/NubiaSlideView$1;->this$0:Lcom/android/server/policy/NubiaSlideView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/server/policy/NubiaSlideView$1;->this$0:Lcom/android/server/policy/NubiaSlideView;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/policy/NubiaSlideView;->mCanInterrupt:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/NubiaSlideView;->access$002(Lcom/android/server/policy/NubiaSlideView;Z)Z

    return-void
.end method
