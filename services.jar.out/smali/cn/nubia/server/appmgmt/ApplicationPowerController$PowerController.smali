.class Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;
.super Ljava/lang/Object;
.source "ApplicationPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PowerController"
.end annotation


# instance fields
.field mAlarm:Z

.field mWakelock:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ZZ)V
    .locals 0
    .param p1, "wakelock"    # Z
    .param p2, "alarm"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;->mWakelock:Z

    iput-boolean p2, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;->mAlarm:Z

    return-void
.end method
