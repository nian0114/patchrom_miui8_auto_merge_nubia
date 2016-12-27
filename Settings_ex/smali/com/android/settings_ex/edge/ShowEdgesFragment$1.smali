.class Lcom/android/settings_ex/edge/ShowEdgesFragment$1;
.super Ljava/lang/Object;
.source "ShowEdgesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/edge/ShowEdgesFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/edge/ShowEdgesFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/edge/ShowEdgesFragment;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings_ex/edge/ShowEdgesFragment$1;->this$0:Lcom/android/settings_ex/edge/ShowEdgesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/edge/ShowEdgesFragment$1;->this$0:Lcom/android/settings_ex/edge/ShowEdgesFragment;

    # invokes: Lcom/android/settings_ex/edge/ShowEdgesFragment;->toEdgeGuidePage()V
    invoke-static {v0}, Lcom/android/settings_ex/edge/ShowEdgesFragment;->access$000(Lcom/android/settings_ex/edge/ShowEdgesFragment;)V

    .line 114
    return-void
.end method
