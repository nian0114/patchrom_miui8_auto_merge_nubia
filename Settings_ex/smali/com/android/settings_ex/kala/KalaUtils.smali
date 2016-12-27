.class public Lcom/android/settings_ex/kala/KalaUtils;
.super Ljava/lang/Object;
.source "KalaUtils.java"


# static fields
.field public static final app_icon:Ljava/util/HashMap;
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

.field public static final app_name:Ljava/util/HashMap;
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

.field private static support:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput v0, Lcom/android/settings_ex/kala/KalaUtils;->support:I

    .line 55
    new-instance v0, Lcom/android/settings_ex/kala/KalaUtils$1;

    invoke-direct {v0}, Lcom/android/settings_ex/kala/KalaUtils$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/kala/KalaUtils;->app_icon:Ljava/util/HashMap;

    .line 64
    new-instance v0, Lcom/android/settings_ex/kala/KalaUtils$2;

    invoke-direct {v0}, Lcom/android/settings_ex/kala/KalaUtils$2;-><init>()V

    sput-object v0, Lcom/android/settings_ex/kala/KalaUtils;->app_name:Ljava/util/HashMap;

    return-void
.end method

.method public static isSupportKaraOke()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 27
    sget v2, Lcom/android/settings_ex/kala/KalaUtils;->support:I

    if-nez v2, :cond_0

    .line 29
    const-string v2, "ro.zte.karaoke.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    sput v0, Lcom/android/settings_ex/kala/KalaUtils;->support:I

    .line 39
    :cond_0
    :goto_0
    sget v2, Lcom/android/settings_ex/kala/KalaUtils;->support:I

    if-ne v2, v0, :cond_2

    .line 45
    :goto_1
    return v0

    .line 35
    :cond_1
    const/4 v2, -0x1

    sput v2, Lcom/android/settings_ex/kala/KalaUtils;->support:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 45
    goto :goto_1
.end method
