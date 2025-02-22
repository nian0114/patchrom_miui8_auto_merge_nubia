.class abstract Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;
.super Ljava/lang/Object;
.source "NubiaGlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/NubiaGlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/NubiaGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToggleAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;
    }
.end annotation


# instance fields
.field protected mDisabledIconResid:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledStatusMessageResId:I

.field protected mMessageResId:I

.field protected mState:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "enabledIconResId"    # I
    .param p2, "disabledIconResid"    # I
    .param p3, "message"    # I
    .param p4, "enabledStatusMessageResId"    # I
    .param p5, "disabledStatusMessageResId"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    iput p1, p0, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->mEnabledIconResId:I

    iput p2, p0, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->mDisabledIconResid:I

    iput p3, p0, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->mMessageResId:I

    iput p4, p0, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    iput p5, p0, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 1
    .param p1, "buttonOn"    # Z

    .prologue
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->willCreate()V

    const v6, 0x1090062

    invoke-virtual {p4, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .local v5, "v":Landroid/view/View;
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .local v1, "icon":Landroid/widget/ImageView;
    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .local v2, "messageView":Landroid/widget/TextView;
    const v6, 0x1020330

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .local v4, "statusView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    .local v0, "enabled":Z
    if-eqz v2, :cond_0

    iget v6, p0, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->mMessageResId:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    iget-object v6, p0, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    if-eq v6, v8, :cond_1

    iget-object v6, p0, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    if-ne v6, v8, :cond_4

    :cond_1
    const/4 v3, 0x1

    .local v3, "on":Z
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v3, :cond_5

    iget v6, p0, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->mEnabledIconResId:I

    :goto_1
    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_2
    if-eqz v4, :cond_3

    if-eqz v3, :cond_6

    iget v6, p0, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_3
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    return-object v5

    .end local v3    # "on":Z
    :cond_4
    move v3, v7

    goto :goto_0

    .restart local v3    # "on":Z
    :cond_5
    iget v6, p0, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->mDisabledIconResid:I

    goto :goto_1

    :cond_6
    iget v6, p0, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_2
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;->inTransition()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public final onPress()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    invoke-virtual {v1}, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GlobalActions"

    const-string v2, "shouldn\'t be able to toggle when in transition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .local v0, "nowOn":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->onToggle(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->changeStateFromPress(Z)V

    goto :goto_0

    .end local v0    # "nowOn":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/NubiaGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/NubiaGlobalActions$ToggleAction$State;

    return-void
.end method

.method willCreate()V
    .locals 0

    .prologue
    return-void
.end method
