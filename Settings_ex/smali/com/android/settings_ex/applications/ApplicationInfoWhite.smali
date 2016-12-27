.class public Lcom/android/settings_ex/applications/ApplicationInfoWhite;
.super Ljava/lang/Object;
.source "ApplicationInfoWhite.java"


# static fields
.field public static final mAppPkg:Ljava/util/HashMap;
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
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationInfoWhite$1;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ApplicationInfoWhite$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationInfoWhite;->mAppPkg:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
