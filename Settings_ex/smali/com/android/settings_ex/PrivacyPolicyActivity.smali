.class public Lcom/android/settings_ex/PrivacyPolicyActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "PrivacyPolicyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    return-void
.end method

.method private showErrorAndFinish()V
    .locals 2

    .prologue
    .line 111
    const v0, 0x7f0c0baf

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacyPolicyActivity;->finish()V

    .line 114
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacyPolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "locale":Ljava/lang/String;
    const/4 v2, 0x0

    .line 69
    .local v2, "fileName":Ljava/lang/String;
    const-string v5, "CN"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 71
    const-string v2, "/system/etc/pp.html.gz"

    .line 79
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 80
    const-string v5, "PrivacyPolicyActivity"

    const-string v6, "The system property for the privacy file is empty."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-direct {p0}, Lcom/android/settings_ex/PrivacyPolicyActivity;->showErrorAndFinish()V

    .line 108
    :goto_1
    return-void

    .line 72
    :cond_0
    const-string v5, "TW"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 73
    const-string v2, "/system/etc/pp_tw.html.gz"

    goto :goto_0

    .line 74
    :cond_1
    const-string v5, "HK"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 75
    const-string v2, "/system/etc/pp_hk.html.gz"

    goto :goto_0

    .line 77
    :cond_2
    const-string v2, "/system/etc/pp_e.html.gz"

    goto :goto_0

    .line 84
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    .line 86
    :cond_4
    const-string v5, "PrivacyPolicyActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "License file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-direct {p0}, Lcom/android/settings_ex/PrivacyPolicyActivity;->showErrorAndFinish()V

    goto :goto_1

    .line 94
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "text/html"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v5, "android.intent.extra.TITLE"

    const v6, 0x7f0c0bae

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/PrivacyPolicyActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v5, "fileName"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v5, "com.android.htmlviewer"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/PrivacyPolicyActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacyPolicyActivity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "PrivacyPolicyActivity"

    const-string v6, "Failed to find viewer"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    invoke-direct {p0}, Lcom/android/settings_ex/PrivacyPolicyActivity;->showErrorAndFinish()V

    goto/16 :goto_1
.end method
