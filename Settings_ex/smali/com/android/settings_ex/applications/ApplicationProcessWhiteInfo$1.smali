.class final Lcom/android/settings_ex/applications/ApplicationProcessWhiteInfo$1;
.super Ljava/util/HashMap;
.source "ApplicationProcessWhiteInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ApplicationProcessWhiteInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 19
    const-string v0, "android.process.media"

    .line 20
    .local v0, "mediaProcessPkgKey":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 21
    .local v1, "mediaProcessValue":Ljava/lang/Integer;
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/ApplicationProcessWhiteInfo$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v2, "cn.nubia.trafficcontrol"

    .line 25
    .local v2, "trafficcontrolKey":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 26
    .local v3, "trafficcontrolValue":Ljava/lang/Integer;
    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/applications/ApplicationProcessWhiteInfo$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method
