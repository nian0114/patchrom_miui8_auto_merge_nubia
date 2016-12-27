.class Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;
.super Lcom/android/settings_ex/SaveChosenLockWorkerBase;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private mChosenPassword:Ljava/lang/String;

.field private mCurrentPassword:Ljava/lang/String;

.field private mRequestedQuality:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 667
    invoke-direct {p0}, Lcom/android/settings_ex/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/ChooseLockPassword$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/ChooseLockPassword$1;

    .prologue
    .line 667
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;-><init>()V

    return-void
.end method


# virtual methods
.method protected saveAndVerifyInBackground()Landroid/content/Intent;
    .locals 8

    .prologue
    .line 687
    const/4 v1, 0x0

    .line 688
    .local v1, "result":Landroid/content/Intent;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 689
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    iget v7, p0, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 691
    iget-boolean v4, p0, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->mHasChallenge:Z

    if-eqz v4, :cond_1

    .line 694
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->mChallenge:J

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword(Ljava/lang/String;JI)[B
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 699
    .local v2, "token":[B
    :goto_0
    if-nez v2, :cond_0

    .line 700
    const-string v4, "ChooseLockPassword"

    const-string v5, "critical: no token returned for known good password."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "result":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 704
    .restart local v1    # "result":Landroid/content/Intent;
    const-string v4, "hw_auth_token"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 707
    .end local v2    # "token":[B
    :cond_1
    return-object v1

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    const/4 v2, 0x0

    .restart local v2    # "token":[B
    goto :goto_0
.end method

.method public start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "required"    # Z
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J
    .param p6, "chosenPassword"    # Ljava/lang/String;
    .param p7, "currentPassword"    # Ljava/lang/String;
    .param p8, "requestedQuality"    # I

    .prologue
    .line 676
    invoke-virtual/range {p0 .. p5}, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJ)V

    .line 678
    iput-object p6, p0, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    .line 679
    iput-object p7, p0, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    .line 680
    iput p8, p0, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    .line 682
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseLockPassword$SaveAndFinishWorker;->start()V

    .line 683
    return-void
.end method
