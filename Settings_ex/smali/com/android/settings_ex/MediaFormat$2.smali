.class Lcom/android/settings_ex/MediaFormat$2;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MediaFormat;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/settings_ex/MediaFormat$2;->this$0:Lcom/android/settings_ex/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$2;->this$0:Lcom/android/settings_ex/MediaFormat;

    const/16 v1, 0x37

    # invokes: Lcom/android/settings_ex/MediaFormat;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/MediaFormat;->access$400(Lcom/android/settings_ex/MediaFormat;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat$2;->this$0:Lcom/android/settings_ex/MediaFormat;

    # invokes: Lcom/android/settings_ex/MediaFormat;->establishFinalConfirmationState()V
    invoke-static {v0}, Lcom/android/settings_ex/MediaFormat;->access$500(Lcom/android/settings_ex/MediaFormat;)V

    .line 212
    :cond_0
    return-void
.end method
