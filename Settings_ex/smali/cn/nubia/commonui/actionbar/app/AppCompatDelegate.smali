.class public abstract Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/app/Activity;Lcn/nubia/commonui/actionbar/app/AppCompatCallback;)Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Lcn/nubia/commonui/actionbar/app/AppCompatCallback;

    .prologue
    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 77
    new-instance v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV11;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV11;-><init>(Landroid/content/Context;Landroid/view/Window;Lcn/nubia/commonui/actionbar/app/AppCompatCallback;)V

    .line 79
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;-><init>(Landroid/content/Context;Landroid/view/Window;Lcn/nubia/commonui/actionbar/app/AppCompatCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract getMenuInflater()Landroid/view/MenuInflater;
.end method

.method public abstract getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;
.end method

.method public abstract installViewFactory()V
.end method

.method public abstract invalidateOptionsMenu()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPostCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onPostResume()V
.end method

.method public abstract onStop()V
.end method

.method public abstract setContentView(I)V
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method
