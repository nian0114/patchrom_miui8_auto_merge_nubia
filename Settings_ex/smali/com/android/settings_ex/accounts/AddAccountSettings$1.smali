.class Lcom/android/settings_ex/accounts/AddAccountSettings$1;
.super Ljava/lang/Object;
.source "AddAccountSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accounts/AddAccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accounts/AddAccountSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accounts/AddAccountSettings;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings_ex/accounts/AddAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v2, 0x1

    .line 96
    .local v2, "done":Z
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 98
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "intent"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_4

    .line 100
    const/4 v2, 0x0

    .line 102
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v0, "addAccountOptions":Landroid/os/Bundle;
    const-string v5, "pendingIntent"

    iget-object v6, p0, Lcom/android/settings_ex/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings_ex/accounts/AddAccountSettings;

    # getter for: Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/android/settings_ex/accounts/AddAccountSettings;->access$000(Lcom/android/settings_ex/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 104
    const-string v5, "hasMultipleUsers"

    iget-object v6, p0, Lcom/android/settings_ex/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings_ex/accounts/AddAccountSettings;

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    const-string v5, "android.intent.extra.USER"

    iget-object v6, p0, Lcom/android/settings_ex/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings_ex/accounts/AddAccountSettings;

    # getter for: Lcom/android/settings_ex/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v6}, Lcom/android/settings_ex/accounts/AddAccountSettings;->access$100(Lcom/android/settings_ex/accounts/AddAccountSettings;)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 107
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 108
    iget-object v5, p0, Lcom/android/settings_ex/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings_ex/accounts/AddAccountSettings;

    # getter for: Lcom/android/settings_ex/accounts/AddAccountSettings;->mIsEmailAccountType:Z
    invoke-static {v5}, Lcom/android/settings_ex/accounts/AddAccountSettings;->access$200(Lcom/android/settings_ex/accounts/AddAccountSettings;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    const-string v5, "FLOW_MODE"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    iget-object v5, p0, Lcom/android/settings_ex/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings_ex/accounts/AddAccountSettings;

    const/4 v6, 0x0

    # setter for: Lcom/android/settings_ex/accounts/AddAccountSettings;->mIsEmailAccountType:Z
    invoke-static {v5, v6}, Lcom/android/settings_ex/accounts/AddAccountSettings;->access$202(Lcom/android/settings_ex/accounts/AddAccountSettings;Z)Z
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/android/settings_ex/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings_ex/accounts/AddAccountSettings;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/settings_ex/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings_ex/accounts/AddAccountSettings;

    # getter for: Lcom/android/settings_ex/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v7}, Lcom/android/settings_ex/accounts/AddAccountSettings;->access$100(Lcom/android/settings_ex/accounts/AddAccountSettings;)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/settings_ex/accounts/AddAccountSettings;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    .line 124
    .end local v0    # "addAccountOptions":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const-string v5, "AccountSettings"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    const-string v5, "AccountSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account added: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    :cond_2
    if-eqz v2, :cond_3

    .line 137
    iget-object v5, p0, Lcom/android/settings_ex/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings_ex/accounts/AddAccountSettings;

    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    .line 140
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    return-void

    .line 112
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 136
    .local v3, "e":Landroid/os/BadParcelableException;
    if-eqz v2, :cond_3

    .line 137
    iget-object v5, p0, Lcom/android/settings_ex/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings_ex/accounts/AddAccountSettings;

    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    goto :goto_1

    .line 117
    .end local v3    # "e":Landroid/os/BadParcelableException;
    :cond_4
    :try_start_3
    iget-object v5, p0, Lcom/android/settings_ex/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings_ex/accounts/AddAccountSettings;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/accounts/AddAccountSettings;->setResult(I)V

    .line 118
    iget-object v5, p0, Lcom/android/settings_ex/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings_ex/accounts/AddAccountSettings;

    # getter for: Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/settings_ex/accounts/AddAccountSettings;->access$000(Lcom/android/settings_ex/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 119
    iget-object v5, p0, Lcom/android/settings_ex/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings_ex/accounts/AddAccountSettings;

    # getter for: Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/settings_ex/accounts/AddAccountSettings;->access$000(Lcom/android/settings_ex/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/PendingIntent;->cancel()V

    .line 120
    iget-object v5, p0, Lcom/android/settings_ex/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings_ex/accounts/AddAccountSettings;

    const/4 v6, 0x0

    # setter for: Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v5, v6}, Lcom/android/settings_ex/accounts/AddAccountSettings;->access$002(Lcom/android/settings_ex/accounts/AddAccountSettings;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    :try_end_3
    .catch Landroid/accounts/OperationCanceledException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 126
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v3

    .line 127
    .local v3, "e":Landroid/accounts/OperationCanceledException;
    :try_start_4
    const-string v5, "AccountSettings"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 128
    const-string v5, "AccountSettings"

    const-string v6, "addAccount was canceled"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    :cond_5
    if-eqz v2, :cond_3

    .line 137
    iget-object v5, p0, Lcom/android/settings_ex/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings_ex/accounts/AddAccountSettings;

    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    goto :goto_1

    .line 129
    .end local v3    # "e":Landroid/accounts/OperationCanceledException;
    :catch_2
    move-exception v3

    .line 130
    .local v3, "e":Ljava/io/IOException;
    :try_start_5
    const-string v5, "AccountSettings"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 131
    const-string v5, "AccountSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAccount failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 136
    :cond_6
    if-eqz v2, :cond_3

    .line 137
    iget-object v5, p0, Lcom/android/settings_ex/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings_ex/accounts/AddAccountSettings;

    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    goto :goto_1

    .line 132
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 133
    .local v3, "e":Landroid/accounts/AuthenticatorException;
    :try_start_6
    const-string v5, "AccountSettings"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 134
    const-string v5, "AccountSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAccount failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 136
    :cond_7
    if-eqz v2, :cond_3

    .line 137
    iget-object v5, p0, Lcom/android/settings_ex/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings_ex/accounts/AddAccountSettings;

    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    goto/16 :goto_1

    .line 136
    .end local v3    # "e":Landroid/accounts/AuthenticatorException;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_8

    .line 137
    iget-object v6, p0, Lcom/android/settings_ex/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings_ex/accounts/AddAccountSettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    :cond_8
    throw v5
.end method
