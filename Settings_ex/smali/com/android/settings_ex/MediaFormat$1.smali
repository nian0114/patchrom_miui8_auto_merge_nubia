.class Lcom/android/settings_ex/MediaFormat$1;
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
    .line 107
    iput-object p1, p0, Lcom/android/settings_ex/MediaFormat$1;->this$0:Lcom/android/settings_ex/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    new-instance v0, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;

    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat$1;->this$0:Lcom/android/settings_ex/MediaFormat;

    iget-object v2, p0, Lcom/android/settings_ex/MediaFormat$1;->this$0:Lcom/android/settings_ex/MediaFormat;

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;-><init>(Lcom/android/settings_ex/MediaFormat;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/MediaFormat$WipeAdoptableDisksTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
