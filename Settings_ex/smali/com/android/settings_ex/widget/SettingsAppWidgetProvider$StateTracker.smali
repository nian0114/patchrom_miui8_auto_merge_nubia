.class abstract Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;
.super Ljava/lang/Object;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StateTracker"
.end annotation


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-boolean v0, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 121
    iput-object v1, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 122
    iput-object v1, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 128
    iput-boolean v0, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$1;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;-><init>()V

    return-void
.end method

.method private final getContentDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stateResId"    # I

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->getButtonDescription()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "gadget":Ljava/lang/String;
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "state":Ljava/lang/String;
    const v2, 0x7f0c076b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public abstract getButtonDescription()I
.end method

.method public abstract getButtonId()I
.end method

.method public abstract getButtonImageId(Z)I
.end method

.method public abstract getContainerId()I
.end method

.method public abstract getIndicatorId()I
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x5

    .line 315
    iget-boolean v1, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    if-eqz v1, :cond_0

    .line 331
    :goto_0
    return v0

    .line 325
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 327
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 329
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newState"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 264
    iget-boolean v0, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 265
    .local v0, "wasInTransition":Z
    packed-switch p2, :pswitch_data_0

    .line 284
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    if-nez v1, :cond_1

    .line 285
    iget-boolean v1, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_1

    .line 286
    const-string v1, "SettingsAppWidgetProvider"

    const-string v2, "processing deferred state change"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v1, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    const-string v1, "SettingsAppWidgetProvider"

    const-string v2, "... but intended state matches, so no changes."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    :goto_1
    iput-boolean v3, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 297
    :cond_1
    return-void

    .line 267
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 268
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 271
    :pswitch_1
    iput-boolean v3, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 272
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 275
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 276
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 279
    :pswitch_3
    iput-boolean v4, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 280
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 290
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 291
    iput-boolean v4, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 292
    iget-object v1, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->getContainerId()I

    move-result v1

    .line 201
    .local v1, "containerId":I
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->getButtonId()I

    move-result v0

    .line 202
    .local v0, "buttonId":I
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->getIndicatorId()I

    move-result v2

    .line 203
    .local v2, "indicatorId":I
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->getPosition()I

    move-result v3

    .line 204
    .local v3, "pos":I
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 240
    :goto_0
    :pswitch_0
    return-void

    .line 206
    :pswitch_1
    const v4, 0x7f0c076d

    invoke-direct {p0, p1, v4}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->getContentDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 208
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 209
    # getter for: Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I
    invoke-static {}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->access$400()[I

    move-result-object v4

    aget v4, v4, v3

    invoke-virtual {p2, v2, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 213
    :pswitch_2
    const v4, 0x7f0c076c

    invoke-direct {p0, p1, v4}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->getContentDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 215
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 216
    # getter for: Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I
    invoke-static {}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->access$500()[I

    move-result-object v4

    aget v4, v4, v3

    invoke-virtual {p2, v2, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 225
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 226
    const v4, 0x7f0c076e

    invoke-direct {p0, p1, v4}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->getContentDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 228
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 229
    # getter for: Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I
    invoke-static {}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->access$600()[I

    move-result-object v4

    aget v4, v4, v3

    invoke-virtual {p2, v2, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 232
    :cond_0
    const v4, 0x7f0c076f

    invoke-direct {p0, p1, v4}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->getContentDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 234
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 235
    # getter for: Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I
    invoke-static {}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->access$400()[I

    move-result-object v4

    aget v4, v4, v3

    invoke-virtual {p2, v2, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 137
    .local v0, "currentState":I
    const/4 v1, 0x0

    .line 138
    .local v1, "newState":Z
    packed-switch v0, :pswitch_data_0

    .line 151
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 152
    iget-boolean v3, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    if-eqz v3, :cond_2

    .line 157
    iput-boolean v2, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 162
    :goto_1
    return-void

    .line 140
    :pswitch_1
    const/4 v1, 0x0

    .line 141
    goto :goto_0

    .line 143
    :pswitch_2
    const/4 v1, 0x1

    .line 144
    goto :goto_0

    .line 146
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 159
    :cond_2
    iput-boolean v2, p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 160
    invoke-virtual {p0, p1, v1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
