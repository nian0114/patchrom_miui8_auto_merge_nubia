.class Lcom/nubia/settings/turboshow/TipsDialog$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TipsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/settings/turboshow/TipsDialog;->createDialogOutAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nubia/settings/turboshow/TipsDialog;


# direct methods
.method constructor <init>(Lcom/nubia/settings/turboshow/TipsDialog;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/nubia/settings/turboshow/TipsDialog$4;->this$0:Lcom/nubia/settings/turboshow/TipsDialog;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TipsDialog$4;->this$0:Lcom/nubia/settings/turboshow/TipsDialog;

    const/4 v1, 0x0

    # setter for: Lcom/nubia/settings/turboshow/TipsDialog;->mPlayingOutAnimation:Z
    invoke-static {v0, v1}, Lcom/nubia/settings/turboshow/TipsDialog;->access$202(Lcom/nubia/settings/turboshow/TipsDialog;Z)Z

    .line 172
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TipsDialog$4;->this$0:Lcom/nubia/settings/turboshow/TipsDialog;

    # invokes: Lcom/nubia/settings/turboshow/TipsDialog;->closeDialog()V
    invoke-static {v0}, Lcom/nubia/settings/turboshow/TipsDialog;->access$300(Lcom/nubia/settings/turboshow/TipsDialog;)V

    .line 173
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/nubia/settings/turboshow/TipsDialog$4;->this$0:Lcom/nubia/settings/turboshow/TipsDialog;

    const/4 v1, 0x1

    # setter for: Lcom/nubia/settings/turboshow/TipsDialog;->mPlayingOutAnimation:Z
    invoke-static {v0, v1}, Lcom/nubia/settings/turboshow/TipsDialog;->access$202(Lcom/nubia/settings/turboshow/TipsDialog;Z)Z

    .line 178
    return-void
.end method
