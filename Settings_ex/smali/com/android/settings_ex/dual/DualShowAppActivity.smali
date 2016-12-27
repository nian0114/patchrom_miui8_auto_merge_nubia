.class public Lcom/android/settings_ex/dual/DualShowAppActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "DualShowAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private appName:Ljava/lang/String;

.field private isRemoveDualApp:Z

.field private mButton:Landroid/widget/Button;

.field private mDualInstance:Lcom/android/settings_ex/dual/DualInstanceUtils;

.field private mImageView:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    return-void
.end method

.method private getPkgIncon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 83
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->pm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->appName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 84
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 88
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v2

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->pm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 74
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 78
    .end local v0    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v2

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private saveConfigDual()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->mDualInstance:Lcom/android/settings_ex/dual/DualInstanceUtils;

    iget-object v1, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/settings_ex/dual/DualInstanceUtils;->setConfig(Ljava/lang/String;Landroid/content/Context;)Z

    .line 109
    return-void
.end method

.method private setRemoveAppDialog()V
    .locals 3

    .prologue
    .line 120
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    const v2, 0x30e000a

    invoke-direct {v1, p0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0c0d92

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 126
    .local v0, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v0, p0}, Lcn/nubia/commonui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 127
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 128
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 147
    packed-switch p2, :pswitch_data_0

    .line 156
    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualShowAppActivity;->finish()V

    .line 159
    :goto_0
    :pswitch_0
    return-void

    .line 149
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->mDualInstance:Lcom/android/settings_ex/dual/DualInstanceUtils;

    iget-object v1, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/settings_ex/dual/DualInstanceUtils;->deleteCloneForPackage(Ljava/lang/String;Landroid/content/Context;)Z

    .line 150
    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualShowAppActivity;->finish()V

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->mButton:Landroid/widget/Button;

    if-ne v1, p1, :cond_0

    .line 94
    iget-boolean v1, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->isRemoveDualApp:Z

    if-nez v1, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/android/settings_ex/dual/DualShowAppActivity;->saveConfigDual()V

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 98
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/dual/DualShowAppActivity;->startActivity(Landroid/content/Intent;)V

    .line 105
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/dual/DualShowAppActivity;->setRemoveAppDialog()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 46
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualShowAppActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/PhoneWindow;

    const v4, 0x7f0e0065

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 48
    const v3, 0x7f04008b

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/dual/DualShowAppActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualShowAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 50
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v3, Lcom/android/settings_ex/dual/DualInstanceUtils;

    invoke-direct {v3}, Lcom/android/settings_ex/dual/DualInstanceUtils;-><init>()V

    iput-object v3, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->mDualInstance:Lcom/android/settings_ex/dual/DualInstanceUtils;

    .line 51
    const-string v3, "package_name"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->appName:Ljava/lang/String;

    .line 52
    const-string v3, "is_remove"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->isRemoveDualApp:Z

    .line 53
    const v3, 0x7f12017b

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/dual/DualShowAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->mImageView:Landroid/widget/ImageView;

    .line 54
    const v3, 0x7f12017d

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/dual/DualShowAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->mTextView:Landroid/widget/TextView;

    .line 55
    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualShowAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->pm:Landroid/content/pm/PackageManager;

    .line 56
    iget-object v3, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->appName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings_ex/dual/DualShowAppActivity;->getPkgIncon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object v3, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->mDualInstance:Lcom/android/settings_ex/dual/DualInstanceUtils;

    iget-object v4, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->appName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings_ex/dual/DualShowAppActivity;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Lcom/android/settings_ex/dual/DualInstanceUtils;->getPkgCloneLabel(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "cloneName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v3, 0x7f12017c

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/dual/DualShowAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->mButton:Landroid/widget/Button;

    .line 60
    iget-object v3, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualShowAppActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 62
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    invoke-virtual {v0, v5}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 63
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 143
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 132
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 134
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualShowAppActivity;->finish()V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onResume()V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/dual/DualShowAppActivity;->updateButtonStatus()V

    .line 69
    return-void
.end method

.method public updateButtonStatus()V
    .locals 2

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->isRemoveDualApp:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->mButton:Landroid/widget/Button;

    const v1, 0x7f0c0d91

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualShowAppActivity;->mButton:Landroid/widget/Button;

    const v1, 0x7f0c0d8c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
