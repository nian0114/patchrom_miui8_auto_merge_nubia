.class interface abstract Lcom/android/server/policy/NubiaGlobalActions$Action;
.super Ljava/lang/Object;
.source "NubiaGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/NubiaGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Action"
.end annotation


# virtual methods
.method public abstract create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract onLongPress()Z
.end method

.method public abstract onPress()V
.end method

.method public abstract showBeforeProvisioning()Z
.end method

.method public abstract showDuringKeyguard()Z
.end method
