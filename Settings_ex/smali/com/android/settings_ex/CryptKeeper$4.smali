.class Lcom/android/settings_ex/CryptKeeper$4;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/CryptKeeper;->setupUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field owner_info:Ljava/lang/String;

.field passwordType:I

.field password_visible:Z

.field pattern_visible:Z

.field final synthetic this$0:Lcom/android/settings_ex/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 1

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeper$4;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 487
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/CryptKeeper$4;->passwordType:I

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 486
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/CryptKeeper$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 495
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper$4;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v4}, Lcom/android/settings_ex/CryptKeeper;->access$300(Lcom/android/settings_ex/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 496
    .local v1, "service":Landroid/os/storage/IMountService;
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPasswordType()I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/CryptKeeper$4;->passwordType:I

    .line 497
    const-string v4, "OwnerInfo"

    invoke-interface {v1, v4}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/CryptKeeper$4;->owner_info:Ljava/lang/String;

    .line 498
    const-string v4, "0"

    const-string v5, "PatternVisible"

    invoke-interface {v1, v5}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v2

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings_ex/CryptKeeper$4;->pattern_visible:Z

    .line 499
    const-string v4, "0"

    const-string v5, "PasswordVisible"

    invoke-interface {v1, v5}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings_ex/CryptKeeper$4;->password_visible:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    .end local v1    # "service":Landroid/os/storage/IMountService;
    :goto_2
    const/4 v2, 0x0

    return-object v2

    .restart local v1    # "service":Landroid/os/storage/IMountService;
    :cond_0
    move v4, v3

    .line 498
    goto :goto_0

    :cond_1
    move v2, v3

    .line 499
    goto :goto_1

    .line 500
    .end local v1    # "service":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling mount service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 486
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/CryptKeeper$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 509
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$4;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-virtual {v2}, Lcom/android/settings_ex/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "show_password"

    iget-boolean v2, p0, Lcom/android/settings_ex/CryptKeeper$4;->password_visible:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 512
    iget v2, p0, Lcom/android/settings_ex/CryptKeeper$4;->passwordType:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    .line 513
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$4;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v5, 0x7f04005e

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/CryptKeeper;->setContentView(I)V

    .line 514
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$4;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v5, 0x7f0c080c

    # setter for: Lcom/android/settings_ex/CryptKeeper;->mStatusString:I
    invoke-static {v2, v5}, Lcom/android/settings_ex/CryptKeeper;->access$1302(Lcom/android/settings_ex/CryptKeeper;I)I

    .line 523
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$4;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v5, 0x7f120116

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 524
    .local v1, "status":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$4;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mStatusString:I
    invoke-static {v2}, Lcom/android/settings_ex/CryptKeeper;->access$1300(Lcom/android/settings_ex/CryptKeeper;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 526
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$4;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v5, 0x7f12011d

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 527
    .local v0, "ownerInfo":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$4;->owner_info:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 530
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$4;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->passwordEntryInit()V
    invoke-static {v2}, Lcom/android/settings_ex/CryptKeeper;->access$1500(Lcom/android/settings_ex/CryptKeeper;)V

    .line 532
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$4;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v5, 0x1020002

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/high16 v5, 0x400000

    invoke-virtual {v2, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 534
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$4;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v2}, Lcom/android/settings_ex/CryptKeeper;->access$100(Lcom/android/settings_ex/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 535
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$4;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v2}, Lcom/android/settings_ex/CryptKeeper;->access$100(Lcom/android/settings_ex/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/settings_ex/CryptKeeper$4;->pattern_visible:Z

    if-nez v5, :cond_5

    :goto_2
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 537
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$4;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mCooldown:Z
    invoke-static {v2}, Lcom/android/settings_ex/CryptKeeper;->access$1600(Lcom/android/settings_ex/CryptKeeper;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 539
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$4;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V
    invoke-static {v2, v4}, Lcom/android/settings_ex/CryptKeeper;->access$1400(Lcom/android/settings_ex/CryptKeeper;Z)V

    .line 540
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$4;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->cooldown()V
    invoke-static {v2}, Lcom/android/settings_ex/CryptKeeper;->access$1700(Lcom/android/settings_ex/CryptKeeper;)V

    .line 543
    :cond_1
    return-void

    .end local v0    # "ownerInfo":Landroid/widget/TextView;
    .end local v1    # "status":Landroid/widget/TextView;
    :cond_2
    move v2, v4

    .line 509
    goto :goto_0

    .line 515
    :cond_3
    iget v2, p0, Lcom/android/settings_ex/CryptKeeper$4;->passwordType:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    .line 516
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$4;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v5, 0x7f04005c

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/CryptKeeper;->setContentView(I)V

    .line 517
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$4;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V
    invoke-static {v2, v4}, Lcom/android/settings_ex/CryptKeeper;->access$1400(Lcom/android/settings_ex/CryptKeeper;Z)V

    .line 518
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$4;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v5, 0x7f0c080d

    # setter for: Lcom/android/settings_ex/CryptKeeper;->mStatusString:I
    invoke-static {v2, v5}, Lcom/android/settings_ex/CryptKeeper;->access$1302(Lcom/android/settings_ex/CryptKeeper;I)I

    goto :goto_1

    .line 520
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$4;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v5, 0x7f04005a

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/CryptKeeper;->setContentView(I)V

    .line 521
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$4;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v5, 0x7f0c080b

    # setter for: Lcom/android/settings_ex/CryptKeeper;->mStatusString:I
    invoke-static {v2, v5}, Lcom/android/settings_ex/CryptKeeper;->access$1302(Lcom/android/settings_ex/CryptKeeper;I)I

    goto/16 :goto_1

    .restart local v0    # "ownerInfo":Landroid/widget/TextView;
    .restart local v1    # "status":Landroid/widget/TextView;
    :cond_5
    move v3, v4

    .line 535
    goto :goto_2
.end method
