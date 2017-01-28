.class public Lcn/nubia/server/ServiceInfo;
.super Ljava/lang/Object;
.source "ServiceInfo.java"


# instance fields
.field claseName:Ljava/lang/String;

.field hasFeature:Z

.field sequence:Lcn/nubia/server/Sequence;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLcn/nubia/server/Sequence;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "feature"    # Z
    .param p3, "seq"    # Lcn/nubia/server/Sequence;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/server/ServiceInfo;->claseName:Ljava/lang/String;

    iput-boolean p2, p0, Lcn/nubia/server/ServiceInfo;->hasFeature:Z

    iput-object p3, p0, Lcn/nubia/server/ServiceInfo;->sequence:Lcn/nubia/server/Sequence;

    return-void
.end method
