.class public Lcn/nubia/commonui/actionbar/app/AppCompatActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AppCompatActivity.java"

# interfaces
.implements Landroid/support/v4/app/TaskStackBuilder$SupportParentable;
.implements Lcn/nubia/commonui/actionbar/app/AppCompatCallback;


# instance fields
.field private mDelegate:Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 120
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    return-void
.end method

.method public getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->mDelegate:Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    if-nez v0, :cond_0

    .line 412
    invoke-static {p0, p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->create(Landroid/app/Activity;Lcn/nubia/commonui/actionbar/app/AppCompatCallback;)Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->mDelegate:Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    .line 414
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->mDelegate:Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 352
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 195
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 126
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 127
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 391
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->onSupportContentChanged()V

    .line 392
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->installViewFactory()V

    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method public onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Landroid/support/v4/app/TaskStackBuilder;

    .prologue
    .line 271
    invoke-virtual {p1, p0}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/support/v4/app/TaskStackBuilder;

    .line 272
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 158
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->onDestroy()V

    .line 159
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const/4 v1, 0x1

    .line 152
    :goto_0
    return v1

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 148
    .local v0, "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->onSupportNavigateUp()Z

    move-result v1

    goto :goto_0

    .line 152
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    .line 138
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->onPostResume()V

    .line 139
    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Landroid/support/v4/app/TaskStackBuilder;

    .prologue
    .line 290
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 132
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->onStop()V

    .line 133
    return-void
.end method

.method public onSupportActionModeFinished(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Lcn/nubia/commonui/actionbar/view/ActionMode;

    .prologue
    .line 213
    return-void
.end method

.method public onSupportActionModeStarted(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Lcn/nubia/commonui/actionbar/view/ActionMode;

    .prologue
    .line 204
    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 399
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 4

    .prologue
    .line 316
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 318
    .local v2, "upIntent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 319
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 320
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 321
    .local v0, "b":Landroid/support/v4/app/TaskStackBuilder;
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V

    .line 322
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V

    .line 323
    invoke-virtual {v0}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 326
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v0    # "b":Landroid/support/v4/app/TaskStackBuilder;
    :goto_0
    const/4 v3, 0x1

    .line 339
    :goto_1
    return v3

    .line 327
    .restart local v0    # "b":Landroid/support/v4/app/TaskStackBuilder;
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->finish()V

    goto :goto_0

    .line 335
    .end local v0    # "b":Landroid/support/v4/app/TaskStackBuilder;
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->supportNavigateUpTo(Landroid/content/Intent;)V

    goto :goto_0

    .line 339
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 164
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 105
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->setContentView(I)V

    .line 106
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    .line 111
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 115
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 188
    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 0
    .param p1, "upIntent"    # Landroid/content/Intent;

    .prologue
    .line 385
    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 386
    return-void
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 369
    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
