.class Lcom/nubia/settings/turboshow/WifiLetView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WifiLetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/settings/turboshow/WifiLetView;->startRefreashAnim(IZ)V
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
    .line 228
    iput-object p1, p0, Lcom/nubia/settings/turboshow/WifiLetView$2;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 233
    iget-object v0, p0, Lcom/nubia/settings/turboshow/WifiLetView$2;->this$0:Lcom/nubia/settings/turboshow/WifiLetView;

    invoke-virtual {v0}, Lcom/nubia/settings/turboshow/WifiLetView;->startFlashAnim()V

    .line 234
    return-void
.end method
