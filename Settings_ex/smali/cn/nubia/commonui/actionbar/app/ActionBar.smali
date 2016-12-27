.class public abstract Lcn/nubia/commonui/actionbar/app/ActionBar;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;,
        Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;,
        Lcn/nubia/commonui/actionbar/app/ActionBar$OnMenuVisibilityListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1320
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 1071
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1042
    return-void
.end method

.method public abstract getDisplayOptions()I
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 849
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public invalidateOptionsMenu()Z
    .locals 1

    .prologue
    .line 1056
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1038
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    .line 1066
    const/4 v0, 0x0

    return v0
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setCustomView(Landroid/view/View;Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;)V
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1030
    return-void
.end method

.method public abstract setDisplayHomeAsUpEnabled(Z)V
.end method

.method public abstract setDisplayShowCustomEnabled(Z)V
.end method

.method public abstract setDisplayShowHomeEnabled(Z)V
.end method

.method public abstract setDisplayShowTitleEnabled(Z)V
.end method

.method public setElevation(F)V
    .locals 2
    .param p1, "elevation"    # F

    .prologue
    .line 1010
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1011
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting a non-zero elevation is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1014
    :cond_0
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 2
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    .line 955
    if-eqz p1, :cond_0

    .line 956
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Hide on content scroll is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 959
    :cond_0
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 837
    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1034
    return-void
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1076
    return-void
.end method

.method public startActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/actionbar/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    .prologue
    .line 1046
    const/4 v0, 0x0

    return-object v0
.end method
