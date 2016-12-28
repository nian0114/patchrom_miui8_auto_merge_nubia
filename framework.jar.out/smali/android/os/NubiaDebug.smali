.class public final Landroid/os/NubiaDebug;
.super Ljava/lang/Object;
.source "NubiaDebug.java"


# static fields
.field public static final ACTIVITY_DELAY:I

.field public static DEBUG:Z = false

.field public static final DEBUG_SYSTRACE_TAG:Z

.field public static final DELAY_DEFAULT:I = 0x12c

.field public static final MESSAGE_COUNT:I

.field public static final MESSAGE_DELAY:I

.field public static final RECEIVER_DELAY:I

.field public static final SERVICE_DELAY:I

.field public static final TAG_NUBIA:Ljava/lang/String; = "nubialog"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x12c

    const-string v0, "debug.nubia.log"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/NubiaDebug;->DEBUG:Z

    const-string v0, "debug.nubia.activity_delay"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/NubiaDebug;->ACTIVITY_DELAY:I

    const-string v0, "debug.nubia.service_delay"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/NubiaDebug;->SERVICE_DELAY:I

    const-string v0, "debug.nubia.receiver_delay"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/NubiaDebug;->RECEIVER_DELAY:I

    const-string v0, "debug.nubia.message_delay"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/NubiaDebug;->MESSAGE_DELAY:I

    const-string v0, "debug.nubia.message_count"

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/NubiaDebug;->MESSAGE_COUNT:I

    const-string v0, "debug.nubia.systrace_more"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
