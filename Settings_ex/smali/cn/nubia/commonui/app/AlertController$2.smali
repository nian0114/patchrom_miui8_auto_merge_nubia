.class Lcn/nubia/commonui/app/AlertController$2;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/app/AlertController;->setupDecor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/app/AlertController;

.field final synthetic val$parent:Landroid/view/View;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/app/AlertController;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController$2;->this$0:Lcn/nubia/commonui/app/AlertController;

    iput-object p2, p0, Lcn/nubia/commonui/app/AlertController$2;->val$parent:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 417
    invoke-virtual {p2}, Landroid/view/WindowInsets;->isRound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$2;->this$0:Lcn/nubia/commonui/app/AlertController;

    # getter for: Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/nubia/commonui/app/AlertController;->access$800(Lcn/nubia/commonui/app/AlertController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$dimen;->nubia_alert_dialog_round_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 421
    .local v0, "roundOffset":I
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$2;->val$parent:Landroid/view/View;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 423
    .end local v0    # "roundOffset":I
    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1
.end method
