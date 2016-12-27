.class public Lcom/android/settings_ex/applications/ApplicationProcessWhiteInfo;
.super Ljava/lang/Object;
.source "ApplicationProcessWhiteInfo.java"


# static fields
.field public static final mProcessPkg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationProcessWhiteInfo$1;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ApplicationProcessWhiteInfo$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationProcessWhiteInfo;->mProcessPkg:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
