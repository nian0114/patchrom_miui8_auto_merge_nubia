.class public abstract Lcn/nubia/server/policy/smartface/observe/SettingObserver;
.super Landroid/database/ContentObserver;
.source "SettingObserver.java"


# instance fields
.field protected mCallback:Lcn/nubia/server/policy/smartface/observe/ObserverManager$ObserveCallback;

.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcn/nubia/server/policy/smartface/observe/SettingObserver;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcn/nubia/server/policy/smartface/observe/SettingObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected abstract observe()V
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    invoke-virtual {p0}, Lcn/nubia/server/policy/smartface/observe/SettingObserver;->update()V

    return-void
.end method

.method public registerCallback(Lcn/nubia/server/policy/smartface/observe/ObserverManager$ObserveCallback;)V
    .locals 0
    .param p1, "l"    # Lcn/nubia/server/policy/smartface/observe/ObserverManager$ObserveCallback;

    .prologue
    iput-object p1, p0, Lcn/nubia/server/policy/smartface/observe/SettingObserver;->mCallback:Lcn/nubia/server/policy/smartface/observe/ObserverManager$ObserveCallback;

    return-void
.end method

.method protected abstract update()V
.end method
