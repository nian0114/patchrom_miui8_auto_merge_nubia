.class public Lcom/android/settings_ex/dual/ToastShowUtils;
.super Ljava/lang/Object;
.source "ToastShowUtils.java"


# instance fields
.field private oldMsg:Ljava/lang/String;

.field private oneTime:J

.field private toast:Landroid/widget/Toast;

.field private twoTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/dual/ToastShowUtils;->toast:Landroid/widget/Toast;

    .line 9
    iput-wide v2, p0, Lcom/android/settings_ex/dual/ToastShowUtils;->oneTime:J

    .line 10
    iput-wide v2, p0, Lcom/android/settings_ex/dual/ToastShowUtils;->twoTime:J

    return-void
.end method


# virtual methods
.method public showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "toastTile"    # Ljava/lang/String;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/settings_ex/dual/ToastShowUtils;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 14
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/dual/ToastShowUtils;->toast:Landroid/widget/Toast;

    .line 15
    iget-object v0, p0, Lcom/android/settings_ex/dual/ToastShowUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/dual/ToastShowUtils;->oneTime:J

    .line 29
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/android/settings_ex/dual/ToastShowUtils;->twoTime:J

    iput-wide v0, p0, Lcom/android/settings_ex/dual/ToastShowUtils;->oneTime:J

    .line 30
    return-void

    .line 18
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/dual/ToastShowUtils;->twoTime:J

    .line 19
    iget-object v0, p0, Lcom/android/settings_ex/dual/ToastShowUtils;->oldMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    iget-wide v0, p0, Lcom/android/settings_ex/dual/ToastShowUtils;->twoTime:J

    iget-wide v2, p0, Lcom/android/settings_ex/dual/ToastShowUtils;->oneTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/android/settings_ex/dual/ToastShowUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 24
    :cond_2
    iput-object p2, p0, Lcom/android/settings_ex/dual/ToastShowUtils;->oldMsg:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/android/settings_ex/dual/ToastShowUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Lcom/android/settings_ex/dual/ToastShowUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
