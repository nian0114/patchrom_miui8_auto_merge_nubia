.class Lcn/nubia/commonui/widget/NubiaMorePopup$6;
.super Ljava/lang/Object;
.source "NubiaMorePopup.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/NubiaMorePopup;->startExitAnimation(Landroid/widget/PopupWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$6;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "anim"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v2, 0x0

    .line 523
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$6;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    # getter for: Lcn/nubia/commonui/widget/NubiaMorePopup;->mBackgroundView:Lcn/nubia/commonui/widget/MorePopupRelativeLayout;
    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->access$400(Lcn/nubia/commonui/widget/NubiaMorePopup;)Lcn/nubia/commonui/widget/MorePopupRelativeLayout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->setBackgroundColor(I)V

    .line 525
    return-void
.end method
